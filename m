Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4C752579
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 09:55:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mjpEMwelvlx1Xl7LPgqZcK9x2Xk0l9NgWyIxbZFdDuc=; b=qavAV/xC3QgH7x
	kN5AAJfnt9pycm2qzzpnl5v+MzoA5G4OME5e20acpEebTXLcS2x9FYRwAAf49uWOsSdSi/CwMlqpm
	dfi1ff18Hw4dfP78e1oasNAkr3/kl2irycpnWkqkHX6lN3WhXQyyfZ4lRxvBx2HyCUgamSZEWgXLo
	AtzZzCj77QbsY8HpfHBn2fgFIr5J8obrydki3lNMRWDMdFuSNs6opCXVsmWC1XWq4Bb1Ll7jNlure
	fN5+GNFwC+e/SRsR+bWNtUWK8A+nPgdFGKTKPjBLyh3eIGBirWGC2u0B518OCr1RO26R+A8b9/tpx
	ZwGG3BUIR2tAXcdg1/Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfgIh-00015A-1D; Tue, 25 Jun 2019 07:55:35 +0000
Received: from mail-vk1-f195.google.com ([209.85.221.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfgGz-0007FY-Gn
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 07:53:51 +0000
Received: by mail-vk1-f195.google.com with SMTP id u64so3264350vku.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 00:53:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AVFw9k34ORqk11qGqNuKR7UsT+5hWVW71zgzn1uYKXI=;
 b=tKBCqKqHmRwdcmtISHb/dFLRoSq2zHr4J0gTcbbCxG7RwuvEMgG/qO/wn4Km+tvE8t
 rZQEqKeng7IaFeADjv9oEQOhi3mRXB6UETz2+xjmL3ySDeFlXqg6E9iV1k85iXh5mxPc
 SoVFqVXJsKivZYVuKUTQUUBtFENU3yCsbuN4MdDA9kPyoIC9upX8VVeteRp3GBF64dRR
 Ut8GUWTFyHYew9BbGK2KOyHdULzbPFabG5snXijPyXDqjkTvSvODGrOHmOXyDRJStTVE
 MaK6zjlDyhiu6LzWFwpCIJY/f1vUzx0d5R5zgLTfyHY69x08c9TZpReqoyo5y7+hYlxJ
 60jw==
X-Gm-Message-State: APjAAAWiEnmjQvWRSASIhqdaFNg9Nrky14V4J/5MirCcgargbO3Xpq2e
 7jNOCq45a+Apdr9Jm/pTkchPRA==
X-Google-Smtp-Source: APXvYqzlNzLhWC1AMjtVmQzedVkAjWyS1ZraL261EvJyV+x6EOO5HPo+hvfZy1az90mQE3McB5/xhg==
X-Received: by 2002:a1f:23d6:: with SMTP id j205mr15573092vkj.52.1561449228156; 
 Tue, 25 Jun 2019 00:53:48 -0700 (PDT)
Received: from localhost (li1322-146.members.linode.com. [45.79.223.146])
 by smtp.gmail.com with ESMTPSA id q29sm845330vsl.3.2019.06.25.00.53.46
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Tue, 25 Jun 2019 00:53:47 -0700 (PDT)
From: Shawn Guo <shawnguo@kernel.org>
To: arm@kernel.org
Subject: [GIT PULL 6/7] i.MX arm64 DT changes for 5.3
Date: Tue, 25 Jun 2019 15:53:04 +0800
Message-Id: <20190625075305.29082-6-shawnguo@kernel.org>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190625075305.29082-1-shawnguo@kernel.org>
References: <20190625075305.29082-1-shawnguo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_005349_582738_22DE6AF0 
X-CRM114-Status: GOOD (  15.48  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Shawn Guo <shawnguo@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Li Yang <leoyang.li@nxp.com>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCBhMTg4MzM5Y2E1YTM5NmFjYzU4OGU1
ODUxZWQ3ZTE5ZjY2YjBlYmQ5OgoKICBMaW51eCA1LjItcmMxICgyMDE5LTA1LTE5IDE1OjQ3OjA5
IC0wNzAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6CgogIGdpdDov
L2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9zaGF3bmd1by9saW51eC5n
aXQgdGFncy9pbXgtZHQ2NC01LjMKCmZvciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1cCB0byAwMTQw
NzE1OGU0YzdhNmFjNjQ2OTAxYjdiMDM0YjVhN2Q2MDViNDgwOgoKICBhcm02NDogZHRzOiBsaWJy
ZW01OiBlbmFibGUgdGhlIFNOVlMgcG93ZXIga2V5ICgyMDE5LTA2LTI0IDEwOjA3OjAwICswODAw
KQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQppLk1YIGFybTY0IGRldmljZSB0cmVlIGNoYW5nZXMgZm9yIDUuMzoKIC0gQWRk
IGkuTVg4TVEgYmFzZWQgTGlicmVtNSBkZXZraXQgc3VwcG9ydC4KIC0gQWRkIFNOVlMgcG93ZXIg
a2V5IHN1cHBvcnQgZm9yIGkuTVg4TVEgYW5kIGkuTVg4TU0uCiAtIEFkZCBHUElPIGFsaWFzIGZv
ciBpbXg4bXEgYW5kIGkuTVg4UVhQLgogLSBBIHNlcmllcyBmcm9tIERhbmllbCBCYWx1dGEgdG8g
YWRkIFNBSSBkZXZpY2VzIGFuZCBlbmFibGUgYXVkaW8KICAgc3VwcG9ydCBmb3IgaW14OG1tLWV2
ayBib2FyZC4KIC0gQWRkIEREUiBwZXJmb3JtYW5jZSBtb25pdG9yIHVuaXQgc3VwcG9ydCBmb3Ig
aS5NWDhRWFAuCiAtIEFkZCBpcnFzdGVlciBpbnRlcnJ1cHQgY29udHJvbGxlciBkZXZpY2UgZm9y
IGkuTVg4TVEgU29DLgogLSBBZGQgQ1BVIHNwZWVkIGdyYWRpbmcgYW5kIGFsbCBPUFBzIGZvciBp
Lk1YOE1NIGFuZCBpLk1YOE1RLgogLSBBZGQgT0NPVFAgZGV2aWNlIG5vZGUgZm9yIGkuTVg4UVhQ
LgogLSBWYXJpb3VzIGRldmljZSBhZGRpdGlvbiBmb3IgTFMxMDI4QTogU0FUQSwgcURNQSwgVVNC
LCBNYWxpIERQNTAwIGFuZAogICB0ZW1wZXJhdHVyZSBzZW5zb3IuCiAtIFJhbmRvbSBtaW5vciBj
b2Rpbmcgc3R5bGUgaW1wcm92ZW1lbnRzLgoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpBbmd1cyBBaW5zbGllIChQdXJpc20p
ICg0KToKICAgICAgYXJtNjQ6IGR0czogZnNsOiBpbXg4bXE6IGFkZCB0aGUgc252cyBwb3dlciBr
ZXkgbm9kZQogICAgICBhcm02NDogZHRzOiBmc2w6IGxpYnJlbTU6IEFkZCBhIGRldmljZSB0cmVl
IGZvciB0aGUgTGlicmVtNSBkZXZraXQKICAgICAgYXJtNjQ6IGR0czogbGlicmVtNTogTGltaXQg
dGhlIFVTQiB0byA1VgogICAgICBhcm02NDogZHRzOiBsaWJyZW01OiBlbmFibGUgdGhlIFNOVlMg
cG93ZXIga2V5CgpBbnNvbiBIdWFuZyAoNyk6CiAgICAgIGFybTY0OiBkdHM6IGlteDhtcTogUmVt
b3ZlIHVubmVjZXNzYXJ5IGJsYW5rIGxpbmVzCiAgICAgIGFybTY0OiBkdHM6IGlteDhtcTogQWRk
IGdwaW8gYWxpYXMKICAgICAgYXJtNjQ6IGR0czogaW14OHF4cDogQWRkIGdwaW8gYWxpYXMKICAg
ICAgYXJtNjQ6IGR0czogaW14OHF4cDogTW92ZSB3YXRjaGRvZyBub2RlIGludG8gc2N1IG5vZGUK
ICAgICAgYXJtNjQ6IGR0czogaW14OG1tOiBNb3ZlIGdpYyBub2RlIGludG8gc29jIG5vZGUKICAg
ICAgYXJtNjQ6IGR0czogaW14OG1xLWV2azogRW5hYmxlIFNOVlMgcG93ZXIga2V5CiAgICAgIGFy
bTY0OiBkdHM6IGlteDhtbTogRW5hYmxlIFNOVlMgcG93ZXIga2V5IGFjY29yZGluZyB0byBib2Fy
ZCBkZXNpZ24KCkNodWFuaHVhIEhhbiAoMSk6CiAgICAgIGFybTY0OiBkdHM6IGxzMTAyOGE6IGZp
eCB3YXRjaGRvZyBkZXZpY2Ugbm9kZQoKRGFuaWVsIEJhbHV0YSAoMyk6CiAgICAgIGFybTY0OiBk
dHM6IGlteDhtbTogQWRkIFNBSSBub2RlcwogICAgICBhcm02NDogZHRzOiBpbXg4bW0tZXZrOiBF
bmFibGUgYXVkaW8gY29kZWMgd204NTI0CiAgICAgIGFybTY0OiBkdHM6IGlteDhxeHA6IEFkZCBs
c2lvX211MTMgbm9kZQoKRmFiaW8gRXN0ZXZhbSAoMyk6CiAgICAgIGFybTY0OiBkdHM6IGlteDht
bTogUGFzcyBhIHVuaXQgbmFtZSBmb3IgdGhlICdzb2MnIG5vZGUKICAgICAgYXJtNjQ6IGR0czog
aW14OG1tOiBQYXNzIHRoZSAncmFuZ2VzJyBwcm9wZXJ0eQogICAgICBhcm02NDogZHRzOiBpbXg4
bW06IE1vdmUgdXNicGh5IG91dCBvZiBzb2Mgbm9kZQoKRnJhbmsgTGkgKDEpOgogICAgICBhcm02
NDogZHRzOiBpbXg4cXhwOiBhZGRlZCBkZHIgcGVyZm9ybWFuY2UgbW9uaXRvciBub2RlcwoKR3Vp
ZG8gR8O8bnRoZXIgKDEpOgogICAgICBhcm02NDogZHRzOiBpbXg4bXE6IEFkZCBhIG5vZGUgZm9y
IGlycXN0ZWVyCgpIb3JpYSBHZWFudMSDICgxKToKICAgICAgYXJtNjQ6IGR0czogbHMxMDI4YTog
YWRkIGNyeXB0byBub2RlCgpMZW9uYXJkIENyZXN0ZXogKDMpOgogICAgICBhcm02NDogZHRzOiBp
bXg4bW0tZXZrOiBBZGQgQkQ3MTg0NyBQTUlDCiAgICAgIGFybTY0OiBkdHM6IGlteDhtbTogQWRk
IGNwdSBzcGVlZCBncmFkaW5nIGFuZCBhbGwgT1BQcwogICAgICBhcm02NDogZHRzOiBpbXg4bXE6
IEFkZCBjcHUgc3BlZWQgZ3JhZGluZyBhbmQgYWxsIE9QUHMKClBlbmcgRmFuICgxKToKICAgICAg
YXJtNjQ6IGR0czogaW14OiBhZGQgaS5NWDhRWFAgb2NvdHAgc3VwcG9ydAoKUGVuZyBNYSAoMik6
CiAgICAgIGFybTY0OiBkdHM6IGxzMTAyOGE6IEVuYWJsZSBzYXRhLgogICAgICBhcm02NDogZHRz
OiBmc2w6IGxzMTAyOGE6IEFkZCBxRE1BIG5vZGUKClJhbiBXYW5nICgxKToKICAgICAgYXJtNjQ6
IGR0czogbHMxMDI4YTogQWRkIFVTQiBkdCBub2RlcwoKU2hhd24gR3VvICgyKToKICAgICAgYXJt
NjQ6IGR0czogaW14OHF4cDogc29ydCBhbGlhcyBhbHBoYWJldGljYWxseQogICAgICBhcm02NDog
ZHRzOiBpbXg4cXhwOiBzb3J0IExTSU8gc3Vic3lzdGVtIGRldmljZXMKCldlbiBIZSAoMSk6CiAg
ICAgIGFybTY0OiBkdHM6IGxzMTAyOGE6IEFkZCBwcm9wZXJ0aWVzIGZvciBNYWxpIERQNTAwIG5v
ZGUKCll1YW50aWFuIFRhbmcgKDEpOgogICAgICBhcm02NDogZHRzOiBsczEwMjhhOiBBZGQgdGVt
cGVyYXR1cmUgc2Vuc29yIG5vZGUKCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9NYWtl
ZmlsZSAgICAgICAgICAgICB8ICAgMSArCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9m
c2wtbHMxMDI4YS1xZHMuZHRzICB8ICAyMCArCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2Fs
ZS9mc2wtbHMxMDI4YS1yZGIuZHRzICB8ICAyMCArCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVz
Y2FsZS9mc2wtbHMxMDI4YS5kdHNpICAgICB8IDEzNiArKystCiBhcmNoL2FybTY0L2Jvb3QvZHRz
L2ZyZWVzY2FsZS9pbXg4bW0tZXZrLmR0cyAgICAgICB8IDE5MCArKysrKwogYXJjaC9hcm02NC9i
b290L2R0cy9mcmVlc2NhbGUvaW14OG1tLmR0c2kgICAgICAgICAgfCAxNDQgKysrLQogYXJjaC9h
cm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLWV2ay5kdHMgICAgICAgfCAgIDQgKwogLi4u
L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEtbGlicmVtNS1kZXZraXQuZHRzICAgfCA4MDkgKysr
KysrKysrKysrKysrKysrKysrCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEu
ZHRzaSAgICAgICAgICB8ICA2MCArLQogYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14
OHF4cC5kdHNpICAgICAgICAgfCAxMzQgKystLQogMTAgZmlsZXMgY2hhbmdlZCwgMTQyOSBpbnNl
cnRpb25zKCspLCA4OSBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0
L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEtbGlicmVtNS1kZXZraXQuZHRzCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
