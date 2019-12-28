Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F88112BDDC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 16:06:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WnZMryg6NCNQukbfBTdqjSW72pOnA5ow/AvsHGCbD7E=; b=Xh0Cc6UiieVwtt
	jJKNEo4Rj7+RN4aJ+r8ML92dGOxPUV7hx7BMsWHCurPj1g2GXLBPtnfzWfCsGk2n67QgKzEmip8Uq
	6ghJSJ0qosth4StBpbZ3x+Oho+U3nHnYCoCWyeM/nkukbXzKOZ2ybejPnyRd9Mr+TQD6Aj7asx24V
	RKvn1GuwWM32a3pmnfPzzDFYbY0DEqXjfGEBeG5ecVmgsObNq5WZFepQ/XKpOmeiHRsTAw7/Pdfw5
	5lNZJoRsw3347RHrGdnnl7sCagiK2Xq5945NqzeG450D4EAV5LmXJtLN6aCS3BQ+OminMeVYAy/H7
	z0ANgL7cbWWregdErdAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilDfZ-00066L-4G; Sat, 28 Dec 2019 15:06:21 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1ilDfQ-00065L-Vf; Sat, 28 Dec 2019 15:06:14 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xBSF5xcZ031645,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCASV01.realtek.com.tw[172.21.6.18])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xBSF5xcZ031645
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
 Sat, 28 Dec 2019 23:05:59 +0800
Received: from james-BS01.localdomain (172.21.190.33) by
 RTITCASV01.realtek.com.tw (172.21.6.18) with Microsoft SMTP Server id
 14.3.468.0; Sat, 28 Dec 2019 23:05:58 +0800
From: James Tai <james.tai@realtek.com>
To: <linux-realtek-soc@lists.infradead.org>
Subject: [PATCH v2 0/2] Initial RTD1319 SoC and Realtek PymParticle EVB support
Date: Sat, 28 Dec 2019 23:05:51 +0800
Message-ID: <20191228150553.6210-1-james.tai@realtek.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_070613_272445_7B5FDDEC 
X-CRM114-Status: UNSURE (   6.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.126.72 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Robin Murphy <robin.murphy@arm.com>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmVhcywKClRoaXMgc2VyaWVzIGFkZHMgRGV2aWNlIFRyZWVzIGZvciB0aGUgUmVhbHRl
ayBSVEQxMzE5IFNvQyBhbmQgUmVhbHRlaydzClB5bVBhcnRpY2xlIEVWQi4KClRoZSB2MiBpcyBi
YXNlZCBvbiBteSBSVEQxNjE5IHNlcmllcyBhbmQgQW5kcmVhcycgUlREMTM5NSwgc3lzY29uIHNl
cmllcy4KCnYxIC0+IHYyOgoqIFJlc2VydmUgdGhlIGJvb3QgUk9NIGFkZHJlc3MKKiBSZXNlcnZl
IGJvb3QgbG9hZGVyIGFkZHJlc3MKKiBSZXNlcnZlIGF1ZGlvL3ZpZGVvIEZXIGFkZHJlc3MKKiBS
ZXNlcnZlIFJQQyBhbmQgcmluZyBidWRmZmVyIGFkZHJlc3MKKiBSZXNlcnZlIFRFRSBhZGRyZXNz
CiogU3VwcG9ydCAxIEdpQiBSQU0gYnkgZGVmYXVsdAoqIFJlZHVjZSByYnVzIHJhbmdlIHRvIDIg
TWlCCiogQXBwbHkgdGhlIHN5c2NvbiBmb3IgSVNPLE1JU0MsQ1JULFNCMixTQ1BVX1dSQVBQRVIK
KiBBZGp1c3QgY29tcGF0aWJsZSBzdHJpbmdzIG9yZGVyIGluIGRvY3VtZW50CgpDYzogZGV2aWNl
dHJlZUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IFJvYiBIZXJyaW5nIDxyb2JoK2R0QGtlcm5lbC5vcmc+
CkNjOiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+CgpKYW1lcyBUYWkgKDIpOgog
IGR0LWJpbmRpbmdzOiBhcm06IHJlYWx0ZWs6IERvY3VtZW50IFJURDEzMTkgYW5kIFJlYWx0ZWsg
UHltUGFydGljbGUKICAgIEVWQgogIGFybTY0OiBkdHM6IHJlYWx0ZWs6IEFkZCBSVEQxMzE5IFNv
QyBhbmQgUmVhbHRlayBQeW1QYXJ0aWNsZSBFVkIKCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9h
cm0vcmVhbHRlay55YW1sICAgICAgfCAgIDYgKwogYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVr
L01ha2VmaWxlICAgICAgICAgIHwgICAyICsKIC4uLi9ib290L2R0cy9yZWFsdGVrL3J0ZDEzMTkt
cHltcGFydGljbGUuZHRzICB8ICA0MyArKysrCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsv
cnRkMTMxOS5kdHNpICAgICAgfCAgMTIgKwogYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0
ZDEzeHguZHRzaSAgICAgIHwgMjEyICsrKysrKysrKysrKysrKysrKwogNSBmaWxlcyBjaGFuZ2Vk
LCAyNzUgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9k
dHMvcmVhbHRlay9ydGQxMzE5LXB5bXBhcnRpY2xlLmR0cwogY3JlYXRlIG1vZGUgMTAwNjQ0IGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMzE5LmR0c2kKIGNyZWF0ZSBtb2RlIDEwMDY0
NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTN4eC5kdHNpCgotLSAKMi4yNC4xCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
