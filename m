Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80EC81ABDF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 12:49:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9pRG4DcdQvmCNlGt/z2rz/FNTJ20iRFK+9LDX3Ed0vE=; b=cydS8ACv6JnrP0
	ju4Gzy/WQbtdG4z2KMy9inNALJER/g/bi7F3T36MByu8czVEF8eVYm9eoDDlbtizHKxyQA87PR5xL
	Adj4nXMJDyaaaF1eblSR1RTdFg00A/ISgD5SNLwOz5jUxwmV6jBhfz4QESPjnzGpmsFClbVSsHrjc
	NGy8oPFMytjTvOiLeixHaT8OPZAgU5wnj72CRJIVYovb0Fl9SqOLj0rLejev9qHTjtu05zlgziItD
	aQ8hU+H2YAw2tYynGhVNJvt8/qN4eRePfXrtUE8jBkfZbZx6LF91vcK8hCiOr2YT8bX4848qQtThu
	3sdTVhNjRADSXMQKR6rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPm2g-00056k-0F; Sun, 12 May 2019 10:49:18 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPm2O-0004wA-9e
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 10:49:02 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 3D11BFB03;
 Sun, 12 May 2019 12:48:57 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GpXnQVOhyJqT; Sun, 12 May 2019 12:48:52 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 7CE9947D5C; Sun, 12 May 2019 12:48:51 +0200 (CEST)
From: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Thierry Reding <treding@nvidia.com>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Heiko Stuebner <heiko@sntech.de>, Johan Hovold <johan@kernel.org>,
 Lucas Stach <l.stach@pengutronix.de>, Abel Vesa <abel.vesa@nxp.com>,
 Li Jun <jun.li@nxp.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Robert Chiras <robert.chiras@nxp.com>,
 Sam Ravnborg <sam@ravnborg.org>, Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH v11 0/2] Mixel MIPI DPHY support for NXPs i.MX8 SOCs
Date: Sun, 12 May 2019 12:48:49 +0200
Message-Id: <cover.1557657814.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_034900_657550_5041273B 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBhZGRzIGluaXRpYWwgc3VwcG9ydCBmb3IgdGhlIE1peGVsIElQIGJhc2VkIG1pcGkgZHBo
eSBhcyBmb3VuZCBvbiBpLk1YOApwcm9jZXNzb3JzLiAgSXQgaGFzIHN1cHBvcnQgZm9yIHRoZSBp
Lk1YOE1RLCBzdXBwb3J0IGZvciBvdGhlciB2YXJpYW50cyBjYW4gYmUKYWRkZWQgLSBvbmNlIHRo
ZSBwbGF0Zm9ybSBzcGVjaWZpYyBwYXJ0cyBhcmUgaW4gLSB2aWEgdGhlIHByb3ZpZGVkIGRldmRh
dGEuClRoZSBkcml2ZXIgaXMgc29tZXdoYXQgYmFzZWQgb24gd2hhdCdzIGZvdW5kIGluIE5YUHMg
QlNQLgoKUHVibGljIGRvY3VtZW50YXRpb24gb24gdGhlIERQSFkncyByZWdpc3RlcnMgaXMgY3Vy
cmVudGx5IHRoaW4gaW4gdGhlIGkuTVg4CnJlZmVyZW5jZSBtYW51YWxzIChldmVuIG9uIHRoZSBp
Lk1YOFFYUCBmb3JtIDExLzE4KSBzbyBtb3N0IG9mIHRoZSB2YWx1ZXMgd2VyZQp0YWtlbiBmcm9t
IGV4aXN0aW5nIGRyaXZlcnMuIE5ld2VyIE5YUCBkcml2ZXJzIGhhdmUgYSBiaXQgbW9yZSBkZXRh
aWxzIHNvIHdoZXJlCnBvc3NpYmxlIHRoZSB0aW1pbmdzIGFyZSBjYWxjdWxhdGVkIGFuZCB2YWxp
ZGF0ZWQuCgpUaGlzIHdhcyB0ZXN0ZWQgd2l0aCB0aGUgYW4gaW5pdGlhbCB2ZXJzaW9uIG9mIGEg
TldMIE1JUEkgRFNJIGhvc3QKY29udHJvbGxlciBkcml2ZXIKCiAgICBodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9hcmNoaXZlcy9kcmktZGV2ZWwvMjAxOS1NYXJjaC8yMDk2ODUuaHRtbAoK
YW5kIGEgZm9yd2FyZCBwb3J0ZWQgRENTUyBkcml2ZXIgb24gbGludXgtbmV4dCAyMDE5MDUwNi4K
ClJvYmVydCBDaGlyYXMgKHRoZSBhdXRob3Igb2YgdGhlIGNvcnJlc3BvbmRpbmcgZHJpdmVyIGlu
IE5YUHMgdmVuZG9yCnRyZWUpIGdvdCB0aGlzIGRyaXZlciB0byB3b3JrIGluIGhpcyB0cmVlIGFz
IHdlbGwgdXNpbmcgbXhzZmI6CgogICAgaHR0cHM6Ly93d3cuc3Bpbmljcy5uZXQvbGlzdHMvYXJt
LWtlcm5lbC9tc2c3MTE5NTAuaHRtbAoKQ2hhbmdlcyBmcm9tIHYxMAoqIENvbGxlY3QgUmV2aWV3
ZWQtYnk6IGZyb20gRmFiaW8gRXN0ZXZhbQoqIENvbGxlY3QgUmV2aWV3ZWQtYnk6IGZyb20gU2Ft
IFJhdm5ib3JnCiogQXMgcGVyIHJldmlldyBjb21tZW50cyBmcm9tIFNhbSBSYXZuYm9yZwogICog
VGVybWluYXRlIGFsbCBkZXZfe2RiZyxlcnJ9IHdpdGggJ1xuJwogICogQWRkIG1vcmUgd2hpdGVz
cGFjZSB0byBDTS9DTi9DTyBtYWNyb3MKICAqIERyb3AgYW5vdGhlciBub24tYXNjaWkgc3ltYm9s
IGluIGEgZGVidWcgbWVzc2FnZQoKQ2hhbmdlcyBmcm9tIHY5CiogQXMgcGVyIHJldmlldyBjb21t
ZW50cyBmcm9tIEZhYmlvIEVzdGV2YW0KICAqIFNvcnQgaW5jbHVkZXMgYWxwaGFiZXRpY2FsbHkK
ICAqIFJlbW92ZSBleGNlc3NpdmUgbmV3IGxpbmVzIGJldHdlZW4gZnVuY3Rpb25zCiAgKiBEcm9w
IGVycm9yIG1lc3NhZ2Ugb24gZGV2bV9pb3JlbWFwX3Jlc291cmNlLCBoYW5kbGVkIGJ5CiAgICB0
aGUgY29yZSBhbHJlYWR5LgogICogRG9uJ3QgZGVmYXVsdCB0byBpdCBvbiBpLk1YOAoqIEFzIHBl
ciByZXZpZXcgY29tbWVudHMgZnJvbSBTYW0gUmF2bmJvcmcKICAqIFVzZSBjbGVhcmVyIHZhcmlh
YmxlbmFtZXM6CiAgICAgICBzdHJ1Y3QgcmVnbWFwICpyZWdzIC0+IHJlZ21hcAogICAgICAgdm9p
ZCBfX2lvbWVtICpyZWdzIC0+IGJhc2UKICAqIFVzZSB1MzIgZm9yIGFsbCBwYXJhbWV0ZXJzIG9m
IGdldF9iZXN0X3JhdGlvKCkKICAqIERvbid0IHVzZSBub24tYXNjaWkgc3ltYm9scyBpbiBkZWJ1
ZyBtZXNzYWdlCiAgKiBDaGFuZ2UgTU9EVUxFX0xJQ0VOU0UgdG8gR1BMCiogQXMgcGVyIHJldmll
dyBjb21tZW50IGZyb20gQW5kcmVhcyBGw6RyYmVyCiAgKiBDaGFuZ2UgY28tYXV0aG9yZWQtYnk6
IHRvIGNvLWRldmVsb3BlZC1ieToKKiBDb2xsZWN0IFNpZ25lZC1vZmYtYnkgZnJvbSBSb2JlcnQg
Q2hpcmFzCgpDaGFuZ2VzIGZyb20gdjgKKiBDb2xsZWN0IFJldmlld2VkLWJ5IGZyb20gUm9iIEhl
cnJpbmcKKiBGaXgge2hzLGNsa31fcHJlcGFyZSB2cyB7aHMsY2xrfV96ZXJvIGRlYnVnIHByaW50
IG91dAoKQ2hhbmdlcyBmcm9tIHY3CiogQXMgcGVyIHJldmlldyBjb21tZW50cyBmcm9tIFJvYiBI
ZXJyaW5nCiAgKiBVc2UgZnNsLCBhcyB2ZW5kb3IgcHJlZml4CiAgKiBEcm9wIGNoYW5nZXMgdG8g
dmVuZG9yLXByZWZpeGVzLnR4dCBkdWUgdG8gdGhhdAogICogU2hvcnRlbiBtaXhlbF9kcGh5IHRv
IGRwaHkgaW4gdGhlIGV4YW1wbGUKKiBGaXggYW4gaW5kZW50YXRpb24gZXJyb3Igbm90aWNlZCBi
eSBjaGVja3BhdGNoIHRoYXQgZ290IGludHJvZHVjZWQgaW4gdjYKKiBVc2UgbG93ZXJjYXNlIGxl
dHRlcnMgaW4gaGV4IGFkZHJlc3NlcyBpbiBEVCBiaW5kaW5ncyBleGFtcGxlCgpDaGFuZ2VzIGZy
b20gdjYKKiBEZXBlbmQgb24gSEFTX0lPTUVNIChmaXhlcyBhIGJ1aWxkIHByb2JsZW0gb24gVU0g
c3BvdHRlZCBieSBrYnVpbGQpCgpDaGFuZ2VzIGZyb20gdjUKKiBGaXggYnVpbGQgcHJvYmxlbXMg
b24gbWlwcyAoc3BvdHRlZCBieSB0aGUga2J1aWxkIHRlc3Qgcm9ib3QpIGJ5IHVzaW5nIHUzMgog
IGNvbnNpc3RlbnRseSBhbmQgbG9uZyBsb25nIGZvciBscF90LgoKQ2hhbmdlcyBmcm9tIHY0Ciog
QnVpbGQgYnkgZGVmYXVsdCBvbiBBUkNIX01YQyAmJiBBUk02NAoKQ2hhbmdlcyBmb3JtIHYzCiog
Q2hlY2sgY29ycmVjdCB2YXJpYWJsZSBhZnRlciBkZXZtX2lvcmVtYXBfcmVzb3VyY2UKKiBBZGQg
Um9iZXJ0IENoaXJhcyBhcyBDby1hdXRob3JlZC1ieSBzaW5jZSBoZSdzIHRoZSBhdXRob3IKICBv
ZiB0aGUgZHJpdmVyIGluIE5YUHMgQlNQLgoKQ2hhbmdlcyBmcm9tIHYyCiogQXMgcGVyIHJldmll
dyBjb21tZW50cyBmcm9tIEZhYmlvIEVzdGV2YW0KICAqIEtDb25maWc6IHNlbGVjdCBSRUdNQVBf
TU1JTwogICogRHJvcCBwaHlfcmVhZAogICogRG9uJ3QgbWFrZSBwaHlfd3JpdGUgaW5saW5lCiAg
KiBSZW1vdmUgZHVwbGljYXRlIGRlYnVnZ2luZyBvdXRwdXQKICAqIENvbW1lbnQgc3R5bGUgYW5k
IHR5cG8gZml4ZXMKICAqIEFkZCAjZGVmaW5lcydzIGZvciBQTEwgbG9jayB0aW1pbmcgdmFsdWVz
CiAgKiBSZXR1cm4gY29ycmVjdCBlcnJvciB2YWx1ZSB3aGVuIFBMTCBmYWlscyB0byBsb2NrCiAg
KiBDaGVjayBlcnJvciB3aGVuIGVuYWJsaW5nIGNsb2NrCiAgKiBVc2UgZGV2bV9pb3JlbWFwX3Jl
c291cmNlCiogQXMgcGVyIHJldmlldyBjb21tZW50cyBmcm9tIFJvYmVydCBDaGlyYXMKICAqIERl
YXNzZXJ0IFBEX0RQSFkgYWZ0ZXIgUExMIGxvY2sgKGFzIHBlciBtaXhlbCByZWYgbWFudWFsKQog
ICogQXNzZXJ0IFBEX3tEUEhZLFBMTH0gYmVmb3JlIHBvd2VyIG9uIChhcyBwZXIgbWl4ZWwgcmVm
IG1hbnVhbCltYW51YWwKKiBBZGQgZXhpdCBwaHlfb3AgdG8gcmVzZXQgQ04vQ00vQ08KCkNoYW5n
ZXMgZnJvbSB2MQoqIEFzIHBlciByZXZpZXcgY29tbWVudHMgZnJvbSBGYWJpbyBFc3RldmFtCiAg
KiBLY29uZmlnOiB0cmlzdGF0ZSBtaXhlbCBkcGh5IHN1cHBvcnQuCiAgKiBEcm9wIHVudXNlZCAn
cmV0JyBpbiBtaXhlbF9kcGh5X3JlZl9wb3dlcl9vZmYuCiAgKiBNYXRjaCB2YWx1ZXMgb2YgRFBI
WV9SWEx7UFJQLERSUH0gdG8gdGhvc2Ugb2YKICAgIGh0dHBzOi8vc291cmNlLmNvZGVhdXJvcmEu
b3JnL2V4dGVybmFsL2lteC9saW51eC1pbXgvbG9nLz9oPWlteF80LjE0Ljc4XzEuMC4wX2dhCiAg
ICBUaGUgcHJldmlvdXMgdmFsdWVzIHdlcmUgYmFzZWQgb24gNC45LgogICogVXNlIHJlc291cmNl
IHNpemUgb24gZGV2bV9pb3JlbWFwLCB3ZSBoYXZlIHRoYXQgaW4gZHQgYWxyZWFkeS4KICAqIFVz
ZSByZWdtYXAgc28gaXQncyBzaW1wbGUgdG8gZHVtcCB0aGUgcmVnaXN0ZXJzLgogICogVXNlIHJl
Z21hcF9yZWFkX3BvbGxfdGltZW91dCBpbnN0ZWFkIG9mIG9wZW4gY29kZWQgbG9vcC4KICAqIEFk
ZCB1bmRvY3VtZW50ZWQgcnhoc19zZXR0bGUgcmVnaXN0ZXIKKiBBcyBwZXIgcmV2aWV3IGNvbW1l
bnRzIGZyb20gU2FtIFJhdm5ib3JnCiAgKiBNb3ZlIGRyaXZlciB0byBkL3BoeS9mcmVlc2NhbGUv
CiAgKiBNb3ZlIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyIHRvIHRvcCBvZiBmaWxlLgogICogRHJv
cCAnLyogI2RlZmluZSBERUJVRyAxICovJy4KICAqIFVzZSBHUEwtMi4wKyBzaW5jZSB0aGUgdmVu
ZG9yIGRyaXZlciB1c2VzIHRoYXQgYXMgd2VsbC4KICAqIERyb3AgdGhlIG11dGV4LCByZWdpc3Rl
ciBhY2Nlc3MgaXMgbm93IHByb3RlY3RlZCBieSByZWdtYXAuCiAgKiBGaXggdmFyaW91cyBzdHls
ZSAvIGluZGVudGF0aW9uIGlzc3Vlcy4KKiBDaGVjayBmb3IgcmVnaXN0ZXIgcmVhZCwgd3JpdGUg
YW5kIGlvcmVtYXAgZXJyb3JzCiogSW1wcm92ZSBwaHkgdGltaW5nIGNhbGN1bGF0aW9ucwogICog
VXNlIExQIGNsb2NrIHJhdGUgd2hlcmUgc2Vuc2libGUsIGNoZWNrIGZvciBlcnJvcnMKICAqIFVz
ZSBhZCBob2MgZm9ydW11bGFzIGZvciB0aW1pbmdzIGludm9sdmluZyBocyBjbG9jawoqIFN3aXRj
aCBmcm9tIGRwaHlfb3BzIHRvIGRldmRhdGEuIE90aGVyIGkuTVg4IHZhcmlhbnRzCiAgZGlmZmVy
IGluIHJlZ2lzdGVyIGxheW91dCB0b28KKiBBZGQgTWl4ZWwgSW5jIHRvIHZlbmRvci1wcmVmaXhl
cy50eHQKCkd1aWRvIEfDvG50aGVyICgyKToKICBkdC1iaW5kaW5nczogcGh5OiBBZGQgZG9jdW1l
bnRhdGlvbiBmb3IgbWl4ZWwgZHBoeQogIHBoeTogQWRkIGRyaXZlciBmb3IgbWl4ZWwgbWlwaSBk
cGh5IGZvdW5kIG9uIE5YUCdzIGkuTVg4IFNvQ3MKCiAuLi4vYmluZGluZ3MvcGh5L21peGVsLG1p
cGktZHNpLXBoeS50eHQgICAgICAgfCAgMjkgKwogZHJpdmVycy9waHkvZnJlZXNjYWxlL0tjb25m
aWcgICAgICAgICAgICAgICAgIHwgIDEwICsKIGRyaXZlcnMvcGh5L2ZyZWVzY2FsZS9NYWtlZmls
ZSAgICAgICAgICAgICAgICB8ICAgMSArCiAuLi4vcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDgt
bWlwaS1kcGh5LmMgICAgfCA1MDAgKysrKysrKysrKysrKysrKysrCiA0IGZpbGVzIGNoYW5nZWQs
IDU0MCBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3BoeS9taXhlbCxtaXBpLWRzaS1waHkudHh0CiBjcmVhdGUgbW9kZSAx
MDA2NDQgZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14OC1taXBpLWRwaHkuYwoKLS0g
CjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
