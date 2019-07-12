Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05349665E0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 06:45:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l64HFL9PVriWLJsfuk+/Y+poBcP8psh6nkkyOav8h60=; b=Jr7i0ozQUba8Kg
	K8TEFfBo1iAnm8lRMQQYCEGlxUmbcqj7W1cXyZkz/URCcmL5EmSa3QRy9Bgi8aIebyfX+wqrAniS4
	PLpsXqLjziu7Ca5YkoEC6fpbKRweBNYYwIlxrsqWxoRjDKGvTVQcxtIAw5Tmii1KkmPexhlezlN8d
	ZzUZz3gNNSWEV6cJGdeEYFx2iCVWKM6BdScjXHx195vViSW/45NAthiQtpnZyKthFNuUf5wCE/eZX
	pWiAzcYhVRDCNlDkXYquqqhoxCYoY7HdBHIRSl17cF9sjVp0PVLA9lcyw3VM/1G1g2iDtlZ8Rb7jP
	ERezRbASz3i9ZZQreBzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlnRA-0003n4-C1; Fri, 12 Jul 2019 04:45:36 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlnQB-0001z6-81; Fri, 12 Jul 2019 04:44:36 +0000
X-UUID: ca7bbff683534c22a899dcaf6e5fe470-20190711
X-UUID: ca7bbff683534c22a899dcaf6e5fe470-20190711
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1733890252; Thu, 11 Jul 2019 20:44:27 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 11 Jul 2019 21:44:25 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 12 Jul 2019 12:44:18 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 12 Jul 2019 12:44:18 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <pedrom.sousa@synopsys.com>
Subject: [PATCH v1 2/2] scsi: ufs: Fix broken hba->outstanding_tasks
Date: Fri, 12 Jul 2019 12:44:16 +0800
Message-ID: <1562906656-27154-3-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1562906656-27154-1-git-send-email-stanley.chu@mediatek.com>
References: <1562906656-27154-1-git-send-email-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_214435_286624_4D9A84CD 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: marc.w.gonzalez@free.fr, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, evgreen@chromium.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q3VycmVudGx5IGJpdHMgaW4gaGJhLT5vdXRzdGFuZGluZ190YXNrcyBhcmUgY2xlYXJlZCBvbmx5
IGFmdGVyIHRoZWlyCmNvcnJlc3BvbmRpbmcgdGFzayBtYW5hZ2VtZW50IGNvbW1hbmRzIGFyZSBz
dWNjZXNzZnVsbHkgZG9uZSBieQpfX3Vmc2hjZF9pc3N1ZV90bV9jbWQoKS4KCklmIHRpbWVvdXQg
aGFwcGVucyBpbiBhIHRhc2sgbWFuYWdlbWVudCBjb21tYW5kLCBpdHMgY29ycmVzcG9uZGluZwpi
aXQgaW4gaGJhLT5vdXRzdGFuZGluZ190YXNrcyB3aWxsIG5vdCBiZSBjbGVhcmVkIHVudGlsIG5l
eHQgdGFzawptYW5hZ2VtZW50IGNvbW1hbmQgd2l0aCB0aGUgc2FtZSB0YWcgdXNlZCBzdWNjZXNz
ZnVsbHkgZmluaXNoZXMu4oCnCgpUaGlzIGlzIHdyb25nIGFuZCBjYW4gbGVhZCB0byBzb21lIGlz
c3VlcywgbGlrZSBwb3dlciBjb25zdW1wdG9uIGlzc3VlLgpGb3IgZXhhbXBsZSwgdWZzaGNkX3Jl
bGVhc2UoKSBhbmQgdWZzaGNkX2dhdGVfd29yaygpIHdpbGwgZG8gbm90aGluZwppZiBoYmEtPm91
dHN0YW5kaW5nX3Rhc2tzIGlzIG5vdCB6ZXJvIGV2ZW4gaWYgYm90aCBVRlMgaG9zdCBhbmQgZGV2
aWNlcwphcmUgYWN0dWFsbHkgaWRsZS4KCkJlY2F1c2UgZXJyb3IgaGFuZGxpbmcgZmxvdywgaS5l
LiwgdWZzaGNkX3Jlc2V0X2FuZF9yZXN0b3JlKCksIHdpbGwgYmUKdHJpZ2dlcmVkIGFmdGVyIGFu
eSB0YXNrIG1hbmFnZW1lbnQgY29tbWFuZCB0aW1lcyBvdXQsIHdlIGZpeCB0aGlzIGJ5CmNsZWFy
aW5nIGNvcnJlc3BvbmRpbmcgaGJhLT5vdXRzdGFuZGluZ190YXNrcyBiaXRzIGR1cmluZyB0aGlz
IGZsb3cuClRvIGFjaGlldmUgdGhpcywgd2UgbmVlZCBhIG1hc2sgdG8gdHJhY2sgdGltZWQtb3V0
IGNvbW1hbmRzIGFuZCB0aHVzCmVycm9yIGhhbmRsaW5nIGZsb3cgY2FuIGNsZWFyIHRoZWlyIHRh
Z3Mgc3BlY2lmaWNhbGx5LgoKU2lnbmVkLW9mZi1ieTogU3RhbmxleSBDaHUgPHN0YW5sZXkuY2h1
QG1lZGlhdGVrLmNvbT4KLS0tCiBkcml2ZXJzL3Njc2kvdWZzL3Vmc2hjZC5jIHwgMzggKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0KIGRyaXZlcnMvc2NzaS91ZnMvdWZzaGNk
LmggfCAgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDMyIGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zY3NpL3Vmcy91ZnNoY2QuYyBiL2RyaXZlcnMvc2Nz
aS91ZnMvdWZzaGNkLmMKaW5kZXggYTY2N2RiYjU0N2YyLi5mNzgwMDY2ZWRmMjYgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvc2NzaS91ZnMvdWZzaGNkLmMKKysrIGIvZHJpdmVycy9zY3NpL3Vmcy91ZnNo
Y2QuYwpAQCAtNzMxLDcgKzczMSw2IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCB1ZnNoY2Rfb3V0c3Rh
bmRpbmdfcmVxX2NsZWFyKHN0cnVjdCB1ZnNfaGJhICpoYmEsIGludCB0YWcpCiBzdGF0aWMgaW5s
aW5lIHZvaWQgdWZzaGNkX291dHN0YW5kaW5nX3Rhc2tfY2xlYXIoc3RydWN0IHVmc19oYmEgKmhi
YSwgaW50IHRhZykKIHsKIAlfX2NsZWFyX2JpdCh0YWcsICZoYmEtPm91dHN0YW5kaW5nX3Rhc2tz
KTsKLQlkZXZfaW5mbyhoYmEtPmRldiwgImNsZWFyIG91dHN0YW5kaW5nX3Rhc2tzOiAlZFxuIiwg
dGFnKTsKIH0KIAogLyoqCkBAIC01NTQwLDExICs1NTM5LDM0IEBAIHN0YXRpYyB2b2lkIHVmc2hj
ZF9jaGVja19lcnJvcnMoc3RydWN0IHVmc19oYmEgKmhiYSkKICAqLwogc3RhdGljIHZvaWQgdWZz
aGNkX3RtY19oYW5kbGVyKHN0cnVjdCB1ZnNfaGJhICpoYmEpCiB7Ci0JdTMyIHRtX2Rvb3JiZWxs
OworCXUzMiB0bV9kb29yYmVsbCwgdGFnOworCXVuc2lnbmVkIGxvbmcgdG1fZXJyX2hhbmRsZWQg
PSAwOworCXVuc2lnbmVkIGxvbmcgdG1fZG9uZTsKIAogCXRtX2Rvb3JiZWxsID0gdWZzaGNkX3Jl
YWRsKGhiYSwgUkVHX1VUUF9UQVNLX1JFUV9ET09SX0JFTEwpOwogCWhiYS0+dG1fY29uZGl0aW9u
ID0gdG1fZG9vcmJlbGwgXiBoYmEtPm91dHN0YW5kaW5nX3Rhc2tzOwotCXdha2VfdXAoJmhiYS0+
dG1fd3EpOworCXRtX2RvbmUgPSBoYmEtPnRtX2NvbmRpdGlvbjsKKworCS8qIGNsZWFuIHJlc291
cmNlcyBmb3IgdGltZWQtb3V0IHRhc2tzICovCisJZm9yX2VhY2hfc2V0X2JpdCh0YWcsICZoYmEt
PnRtX2NvbmRpdGlvbiwgaGJhLT5udXRtcnMpIHsKKwkJaWYgKHRlc3RfYW5kX2NsZWFyX2JpdCh0
YWcsICZoYmEtPnRtX3Nsb3RzX2VycikpIHsKKwkJCWNsZWFyX2JpdCh0YWcsICZoYmEtPnRtX2Nv
bmRpdGlvbik7CisJCQl1ZnNoY2RfcHV0X3RtX3Nsb3QoaGJhLCB0YWcpOworCQkJdWZzaGNkX291
dHN0YW5kaW5nX3Rhc2tfY2xlYXIoaGJhLCB0YWcpOworCQkJX19zZXRfYml0KHRhZywgJnRtX2Vy
cl9oYW5kbGVkKTsKKwkJfQorCX0KKworCS8qCisJICogTm93IHRhZyB3YWl0ZXJzIGNhbiBnZXQg
ZnJlZSB0YWdzIGlmIHRhZ3Mgd2VyZSBvY2N1cGllZAorCSAqIGJ5IHRpbWVkLW91dCB0YXNrcwor
CSAqLworCWlmICh0bV9lcnJfaGFuZGxlZCkKKwkJd2FrZV91cCgmaGJhLT50bV90YWdfd3EpOwor
CisJLyogaWYgd2UgaGF2ZSBub3JtYWwgdGFza3MsIHRoZXkgc2hhbGwgaGF2ZSBwb3N0LXByb2Nl
c3NpbmcgKi8KKwlpZiAodG1fZXJyX2hhbmRsZWQgIT0gdG1fZG9uZSkKKwkJd2FrZV91cCgmaGJh
LT50bV93cSk7CiB9CiAKIC8qKgpAQCAtNTY4Miw2ICs1NzA0LDcgQEAgc3RhdGljIGludCBfX3Vm
c2hjZF9pc3N1ZV90bV9jbWQoc3RydWN0IHVmc19oYmEgKmhiYSwKIAkJaWYgKHVmc2hjZF9jbGVh
cl90bV9jbWQoaGJhLCBmcmVlX3Nsb3QpKQogCQkJZGV2X1dBUk4oaGJhLT5kZXYsICIlczogdW5h
YmxlIGNsZWFyIHRtIGNtZCAoc2xvdCAlZCkgYWZ0ZXIgdGltZW91dFxuIiwKIAkJCQkJX19mdW5j
X18sIGZyZWVfc2xvdCk7CisJCXNldF9iaXQoZnJlZV9zbG90LCAmaGJhLT50bV9zbG90c19lcnIp
OwogCQllcnIgPSAtRVRJTUVET1VUOwogCX0gZWxzZSB7CiAJCWVyciA9IDA7CkBAIC01NjkyLDEy
ICs1NzE1LDEzIEBAIHN0YXRpYyBpbnQgX191ZnNoY2RfaXNzdWVfdG1fY21kKHN0cnVjdCB1ZnNf
aGJhICpoYmEsCiAJCXNwaW5fbG9ja19pcnFzYXZlKGhiYS0+aG9zdC0+aG9zdF9sb2NrLCBmbGFn
cyk7CiAJCXVmc2hjZF9vdXRzdGFuZGluZ190YXNrX2NsZWFyKGhiYSwgZnJlZV9zbG90KTsKIAkJ
c3Bpbl91bmxvY2tfaXJxcmVzdG9yZShoYmEtPmhvc3QtPmhvc3RfbG9jaywgZmxhZ3MpOwotCiAJ
fQogCi0JY2xlYXJfYml0KGZyZWVfc2xvdCwgJmhiYS0+dG1fY29uZGl0aW9uKTsKLQl1ZnNoY2Rf
cHV0X3RtX3Nsb3QoaGJhLCBmcmVlX3Nsb3QpOwotCXdha2VfdXAoJmhiYS0+dG1fdGFnX3dxKTsK
KwlpZiAoISh0ZXN0X2JpdChmcmVlX3Nsb3QsICZoYmEtPnRtX3Nsb3RzX2VycikpKSB7CisJCWNs
ZWFyX2JpdChmcmVlX3Nsb3QsICZoYmEtPnRtX2NvbmRpdGlvbik7CisJCXVmc2hjZF9wdXRfdG1f
c2xvdChoYmEsIGZyZWVfc2xvdCk7CisJCXdha2VfdXAoJmhiYS0+dG1fdGFnX3dxKTsKKwl9CiAK
IAl1ZnNoY2RfcmVsZWFzZShoYmEpOwogCXJldHVybiBlcnI7CmRpZmYgLS1naXQgYS9kcml2ZXJz
L3Njc2kvdWZzL3Vmc2hjZC5oIGIvZHJpdmVycy9zY3NpL3Vmcy91ZnNoY2QuaAppbmRleCBhNDNj
NzEzNWYzM2QuLjRlNGRmYTZlMjMzYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9zY3NpL3Vmcy91ZnNo
Y2QuaAorKysgYi9kcml2ZXJzL3Njc2kvdWZzL3Vmc2hjZC5oCkBAIC02NDUsNiArNjQ1LDcgQEAg
c3RydWN0IHVmc19oYmEgewogCXdhaXRfcXVldWVfaGVhZF90IHRtX3RhZ193cTsKIAl1bnNpZ25l
ZCBsb25nIHRtX2NvbmRpdGlvbjsKIAl1bnNpZ25lZCBsb25nIHRtX3Nsb3RzX2luX3VzZTsKKwl1
bnNpZ25lZCBsb25nIHRtX3Nsb3RzX2VycjsKIAogCXN0cnVjdCB1aWNfY29tbWFuZCAqYWN0aXZl
X3VpY19jbWQ7CiAJc3RydWN0IG11dGV4IHVpY19jbWRfbXV0ZXg7Ci0tIAoyLjE4LjAKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
