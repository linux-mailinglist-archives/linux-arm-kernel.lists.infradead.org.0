Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3E615E88
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 09:47:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tI41cvSOY00zL/QAib9Tba2PLXW7TQvT1Jb7JFCg5xA=; b=FFVb1nUWzNWCLB
	5FL6pu8HqahEREnxVQCF3c6wgLJFbqh58zIaDRclw5+m+bBzmbqZkwhM/DSHoFUxSPMYUBlVtTrQV
	5XtVBMaf2R6M8bR/a/iejnBmUFXNrAoQVYSAcZy2ZkPm2BaskrwrfR9YXvbz5SYVdUm9JQi4khe6g
	IU5CIzocDA9pnds4IAZXdgo9VqKhk4laERGa0yGBAB80tBhwNNli2OIsVFwKYXCHjWW9ZdwJEqTEJ
	XDzVRFUaZBzaQrynr0SG7jXR/qCWxcR69RKEGA+sJOEtVK6BL8mrpVEqOP0Q+O+z1EaRxmPtvK1kr
	svzbwzzh0Ejr+S6nkseQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNupK-00053x-BY; Tue, 07 May 2019 07:47:50 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNup3-0004x3-Q5
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 07:47:35 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id B6F37FB03;
 Tue,  7 May 2019 09:47:30 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DAVuvV9XCslZ; Tue,  7 May 2019 09:47:27 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 0FCAB4619A; Tue,  7 May 2019 09:47:27 +0200 (CEST)
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
Subject: [PATCH v10 0/2] Mixel MIPI DPHY support for NXPs i.MX8 SOCs
Date: Tue,  7 May 2019 09:47:24 +0200
Message-Id: <cover.1557215047.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_004734_166691_B01464CA 
X-CRM114-Status: GOOD (  15.39  )
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
LWtlcm5lbC9tc2c3MTE5NTAuaHRtbAoKQ2hhbmdlcyBmcm9tIHY5CiogQXMgcGVyIHJldmlldyBj
b21tZW50cyBmcm9tIEZhYmlvIEVzdGV2YW0KICAqIFNvcnQgaW5jbHVkZXMgYWxwaGFiZXRpY2Fs
bHkKICAqIFJlbW92ZSBleGNlc3NpdmUgbmV3IGxpbmVzIGJldHdlZW4gZnVuY3Rpb25zCiAgKiBE
cm9wIGVycm9yIG1lc3NhZ2Ugb24gZGV2bV9pb3JlbWFwX3Jlc291cmNlLCBoYW5kbGVkIGJ5CiAg
ICB0aGUgY29yZSBhbHJlYWR5LgogICogRG9uJ3QgZGVmYXVsdCB0byBpdCBvbiBpLk1YOAoqIEFz
IHBlciByZXZpZXcgY29tbWVudHMgZnJvbSBTYW0gUmF2bmJvcmcKICAqIFVzZSBjbGVhcmVyIHZh
cmlhYmxlbmFtZXM6CiAgICAgICBzdHJ1Y3QgcmVnbWFwICpyZWdzIC0+IHJlZ21hcAogICAgICAg
dm9pZCBfX2lvbWVtICpyZWdzIC0+IGJhc2UKICAqIFVzZSB1MzIgZm9yIGFsbCBwYXJhbWV0ZXJz
IG9mIGdldF9iZXN0X3JhdGlvKCkKICAqIERvbid0IHVzZSBub24tYXNjaWkgc3ltYm9scyBpbiBk
ZWJ1ZyBtZXNzYWdlCiAgKiBDaGFuZ2UgTU9EVUxFX0xJQ0VOU0UgdG8gR1BMCiogQXMgcGVyIHJl
dmlldyBjb21tZW50IGZyb20gQW5kcmVhcyBGw6RyYmVyCiAgKiBDaGFuZ2UgY28tYXV0aG9yZWQt
Ynk6IHRvIGNvLWRldmVsb3BlZC1ieToKKiBDb2xsZWN0IFNpZ25lZC1vZmYtYnkgZnJvbSBSb2Jl
cnQgQ2hpcmFzCgpDaGFuZ2VzIGZyb20gdjgKKiBDb2xsZWN0IFJldmlld2VkLWJ5IGZyb20gUm9i
IEhlcnJpbmcKKiBGaXgge2hzLGNsa31fcHJlcGFyZSB2cyB7aHMsY2xrfV96ZXJvIGRlYnVnIHBy
aW50IG91dAoKQ2hhbmdlcyBmcm9tIHY3CiogQXMgcGVyIHJldmlldyBjb21tZW50cyBmcm9tIFJv
YiBIZXJyaW5nCiAgKiBVc2UgZnNsLCBhcyB2ZW5kb3IgcHJlZml4CiAgKiBEcm9wIGNoYW5nZXMg
dG8gdmVuZG9yLXByZWZpeGVzLnR4dCBkdWUgdG8gdGhhdAogICogU2hvcnRlbiBtaXhlbF9kcGh5
IHRvIGRwaHkgaW4gdGhlIGV4YW1wbGUKKiBGaXggYW4gaW5kZW50YXRpb24gZXJyb3Igbm90aWNl
ZCBieSBjaGVja3BhdGNoIHRoYXQgZ290IGludHJvZHVjZWQgaW4gdjYKKiBVc2UgbG93ZXJjYXNl
IGxldHRlcnMgaW4gaGV4IGFkZHJlc3NlcyBpbiBEVCBiaW5kaW5ncyBleGFtcGxlCgpDaGFuZ2Vz
IGZyb20gdjYKKiBEZXBlbmQgb24gSEFTX0lPTUVNIChmaXhlcyBhIGJ1aWxkIHByb2JsZW0gb24g
VU0gc3BvdHRlZCBieSBrYnVpbGQpCgpDaGFuZ2VzIGZyb20gdjUKKiBGaXggYnVpbGQgcHJvYmxl
bXMgb24gbWlwcyAoc3BvdHRlZCBieSB0aGUga2J1aWxkIHRlc3Qgcm9ib3QpIGJ5IHVzaW5nIHUz
MgogIGNvbnNpc3RlbnRseSBhbmQgbG9uZyBsb25nIGZvciBscF90LgoKQ2hhbmdlcyBmcm9tIHY0
CiogQnVpbGQgYnkgZGVmYXVsdCBvbiBBUkNIX01YQyAmJiBBUk02NAoKQ2hhbmdlcyBmb3JtIHYz
CiogQ2hlY2sgY29ycmVjdCB2YXJpYWJsZSBhZnRlciBkZXZtX2lvcmVtYXBfcmVzb3VyY2UKKiBB
ZGQgUm9iZXJ0IENoaXJhcyBhcyBDby1hdXRob3JlZC1ieSBzaW5jZSBoZSdzIHRoZSBhdXRob3IK
ICBvZiB0aGUgZHJpdmVyIGluIE5YUHMgQlNQLgoKQ2hhbmdlcyBmcm9tIHYyCiogQXMgcGVyIHJl
dmlldyBjb21tZW50cyBmcm9tIEZhYmlvIEVzdGV2YW0KICAqIEtDb25maWc6IHNlbGVjdCBSRUdN
QVBfTU1JTwogICogRHJvcCBwaHlfcmVhZAogICogRG9uJ3QgbWFrZSBwaHlfd3JpdGUgaW5saW5l
CiAgKiBSZW1vdmUgZHVwbGljYXRlIGRlYnVnZ2luZyBvdXRwdXQKICAqIENvbW1lbnQgc3R5bGUg
YW5kIHR5cG8gZml4ZXMKICAqIEFkZCAjZGVmaW5lcydzIGZvciBQTEwgbG9jayB0aW1pbmcgdmFs
dWVzCiAgKiBSZXR1cm4gY29ycmVjdCBlcnJvciB2YWx1ZSB3aGVuIFBMTCBmYWlscyB0byBsb2Nr
CiAgKiBDaGVjayBlcnJvciB3aGVuIGVuYWJsaW5nIGNsb2NrCiAgKiBVc2UgZGV2bV9pb3JlbWFw
X3Jlc291cmNlCiogQXMgcGVyIHJldmlldyBjb21tZW50cyBmcm9tIFJvYmVydCBDaGlyYXMKICAq
IERlYXNzZXJ0IFBEX0RQSFkgYWZ0ZXIgUExMIGxvY2sgKGFzIHBlciBtaXhlbCByZWYgbWFudWFs
KQogICogQXNzZXJ0IFBEX3tEUEhZLFBMTH0gYmVmb3JlIHBvd2VyIG9uIChhcyBwZXIgbWl4ZWwg
cmVmIG1hbnVhbCltYW51YWwKKiBBZGQgZXhpdCBwaHlfb3AgdG8gcmVzZXQgQ04vQ00vQ08KCkNo
YW5nZXMgZnJvbSB2MQoqIEFzIHBlciByZXZpZXcgY29tbWVudHMgZnJvbSBGYWJpbyBFc3RldmFt
CiAgKiBLY29uZmlnOiB0cmlzdGF0ZSBtaXhlbCBkcGh5IHN1cHBvcnQuCiAgKiBEcm9wIHVudXNl
ZCAncmV0JyBpbiBtaXhlbF9kcGh5X3JlZl9wb3dlcl9vZmYuCiAgKiBNYXRjaCB2YWx1ZXMgb2Yg
RFBIWV9SWEx7UFJQLERSUH0gdG8gdGhvc2Ugb2YKICAgIGh0dHBzOi8vc291cmNlLmNvZGVhdXJv
cmEub3JnL2V4dGVybmFsL2lteC9saW51eC1pbXgvbG9nLz9oPWlteF80LjE0Ljc4XzEuMC4wX2dh
CiAgICBUaGUgcHJldmlvdXMgdmFsdWVzIHdlcmUgYmFzZWQgb24gNC45LgogICogVXNlIHJlc291
cmNlIHNpemUgb24gZGV2bV9pb3JlbWFwLCB3ZSBoYXZlIHRoYXQgaW4gZHQgYWxyZWFkeS4KICAq
IFVzZSByZWdtYXAgc28gaXQncyBzaW1wbGUgdG8gZHVtcCB0aGUgcmVnaXN0ZXJzLgogICogVXNl
IHJlZ21hcF9yZWFkX3BvbGxfdGltZW91dCBpbnN0ZWFkIG9mIG9wZW4gY29kZWQgbG9vcC4KICAq
IEFkZCB1bmRvY3VtZW50ZWQgcnhoc19zZXR0bGUgcmVnaXN0ZXIKKiBBcyBwZXIgcmV2aWV3IGNv
bW1lbnRzIGZyb20gU2FtIFJhdm5ib3JnCiAgKiBNb3ZlIGRyaXZlciB0byBkL3BoeS9mcmVlc2Nh
bGUvCiAgKiBNb3ZlIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyIHRvIHRvcCBvZiBmaWxlLgogICog
RHJvcCAnLyogI2RlZmluZSBERUJVRyAxICovJy4KICAqIFVzZSBHUEwtMi4wKyBzaW5jZSB0aGUg
dmVuZG9yIGRyaXZlciB1c2VzIHRoYXQgYXMgd2VsbC4KICAqIERyb3AgdGhlIG11dGV4LCByZWdp
c3RlciBhY2Nlc3MgaXMgbm93IHByb3RlY3RlZCBieSByZWdtYXAuCiAgKiBGaXggdmFyaW91cyBz
dHlsZSAvIGluZGVudGF0aW9uIGlzc3Vlcy4KKiBDaGVjayBmb3IgcmVnaXN0ZXIgcmVhZCwgd3Jp
dGUgYW5kIGlvcmVtYXAgZXJyb3JzCiogSW1wcm92ZSBwaHkgdGltaW5nIGNhbGN1bGF0aW9ucwog
ICogVXNlIExQIGNsb2NrIHJhdGUgd2hlcmUgc2Vuc2libGUsIGNoZWNrIGZvciBlcnJvcnMKICAq
IFVzZSBhZCBob2MgZm9ydW11bGFzIGZvciB0aW1pbmdzIGludm9sdmluZyBocyBjbG9jawoqIFN3
aXRjaCBmcm9tIGRwaHlfb3BzIHRvIGRldmRhdGEuIE90aGVyIGkuTVg4IHZhcmlhbnRzCiAgZGlm
ZmVyIGluIHJlZ2lzdGVyIGxheW91dCB0b28KKiBBZGQgTWl4ZWwgSW5jIHRvIHZlbmRvci1wcmVm
aXhlcy50eHQKCkd1aWRvIEfDvG50aGVyICgyKToKICBkdC1iaW5kaW5nczogcGh5OiBBZGQgZG9j
dW1lbnRhdGlvbiBmb3IgbWl4ZWwgZHBoeQogIHBoeTogQWRkIGRyaXZlciBmb3IgbWl4ZWwgbWlw
aSBkcGh5IGZvdW5kIG9uIE5YUCdzIGkuTVg4IFNvQ3MKCiAuLi4vYmluZGluZ3MvcGh5L21peGVs
LG1pcGktZHNpLXBoeS50eHQgICAgICAgfCAgMjkgKwogZHJpdmVycy9waHkvZnJlZXNjYWxlL0tj
b25maWcgICAgICAgICAgICAgICAgIHwgIDEwICsKIGRyaXZlcnMvcGh5L2ZyZWVzY2FsZS9NYWtl
ZmlsZSAgICAgICAgICAgICAgICB8ICAgMSArCiAuLi4vcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlt
eDgtbWlwaS1kcGh5LmMgICAgfCA0OTkgKysrKysrKysrKysrKysrKysrCiA0IGZpbGVzIGNoYW5n
ZWQsIDUzOSBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9taXhlbCxtaXBpLWRzaS1waHkudHh0CiBjcmVhdGUgbW9k
ZSAxMDA2NDQgZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14OC1taXBpLWRwaHkuYwoK
LS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
