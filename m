Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4548D91213
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 19:43:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fOK8CHlLiCMJZzZ5lauMB/VaXDq07O+Luwm7YlhnXP4=; b=eq/CzcJfNFCb/z
	GN35hijumwOyTlA+657OJfrBiaz5S4BIVhsJPuShtw69YEG37XBxkeDsAjLaS3sh8+KYkri4fcTwJ
	vyJL2YBk9Fn34J5J3nDH/FJGdhFUJ0ZT9+B/zt3L7ucHedXF/LrmivwZMASG4T12vSYFumSgpwCQb
	moZz07/GL9X8FdQT4WG/61PVR3Uw4FNjvdRQkfAkeBOs77F0F0Hlet8jkchK8nXUeGRMEi3d9d69L
	wREviPDYSCk2y1IMiEEc3IBBYnQCI980SM4ktJk7/5sTO6X+7aB/0qv6w9xplRzkSrjMpgzrZQQdA
	Nu3EOZe0HCwNjwnwYG6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hz2jA-0001Ps-Cg; Sat, 17 Aug 2019 17:42:57 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hz2ih-0001PQ-Bp; Sat, 17 Aug 2019 17:42:29 +0000
Received: by mail-wm1-x344.google.com with SMTP id i63so6560303wmg.4;
 Sat, 17 Aug 2019 10:42:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8BvRZzNwicLE/z69UjSGTGXsbcr/fKjBl5Vh3tEDe5E=;
 b=j0hYbZ96LX4H5j/7zgd5rcfxEfejgdQ/b3Z3lITb1rDiOz+pmpdDHibAGDilR0flpI
 0WqNSoZUHOM0zp94G6hvFGixz/r8qegZ8eMUsT+WoXpcJiqi3P/HYMZbec391bcLLqM9
 bvMHWcpEqu0+0B70ai/uKjLUnWIFNSIhPWSrM0arLx60w4/gS5VQTufbP721yWk1cEI7
 3cQGfYIGFlwYld047aS3/5YgQ0HJXE/9xMaieEq8o8XWUq/6cJlFfDodQ49jDZ2OCNsX
 C58m58eoOHH5BDA7qJxepz2d+pWPrxIWG4UrUG+Ue/3DtZLfyVGoKFvWZm4ooYzwr8zA
 dEzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8BvRZzNwicLE/z69UjSGTGXsbcr/fKjBl5Vh3tEDe5E=;
 b=N59T7wkdQASUytejeB062Iyr+rMkrkc4IfskuwiRldcCzq1dSrPwHpGXTX8Z/CvRAe
 FLh+E4p8PoyMvLRFxpNZT7fZF1lF4cFNpjgbm1xgnPtrksVmJd5IxpkJP26bal0Bus8q
 bse7mCpmEiUEW6HhT/qznMIqqm8beq2fmVeH4SxhTF7vGK88yYoHb2XKlSI7KKjfoLj8
 C3CU+ZVq7+x3D6lXOJy5YApFs/P1CfMaW0gn3MNl6e2rTpCOj0mqcxOH73SRCXGmXrIP
 z/ccahcqXmonLzNowYUFukg1SP0PGRtVXjLYY74igY7dJGoUqT0+JhTunWjNJNvociiY
 MHnQ==
X-Gm-Message-State: APjAAAVZC+qkMxrRXkmY+ktG5Jq64dh490fhz0/GCCFpexv1d0z9OvTa
 OTvLdAANUU+rW691dD/Aqlo=
X-Google-Smtp-Source: APXvYqxv2eAKy6wC5/B6NqHIhQmJQf/sbwr5KaaeCSiu5f34DWh1zJuYU6TFxW662W79bfdW9CZ7MQ==
X-Received: by 2002:a1c:a957:: with SMTP id s84mr12487811wme.65.1566063744693; 
 Sat, 17 Aug 2019 10:42:24 -0700 (PDT)
Received: from localhost.localdomain ([92.59.185.54])
 by smtp.gmail.com with ESMTPSA id t8sm23681659wra.73.2019.08.17.10.42.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Aug 2019 10:42:23 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Felipe Balbi <balbi@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH] usb: dwc3: Add shutdown to platform_driver
Date: Sat, 17 Aug 2019 19:41:40 +0200
Message-Id: <20190817174140.6394-1-vicencb@gmail.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <4d18d4f7-a00e-bd60-6361-51054eba3bca@arm.com>
References: <4d18d4f7-a00e-bd60-6361-51054eba3bca@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_104227_599581_0EA1FDA8 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vicencb[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Matthias Brugger <mbrugger@suse.com>, Heiko Stuebner <heiko@sntech.de>,
 MarcZyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-usb@vger.kernel.org, Will Deacon <will.deacon@arm.com>,
 Vicente Bergas <vicencb@gmail.com>, linux-rockchip@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T3RoZXJ3aXNlIHRoZSBkZXZpY2Uga2VlcHMgd3JpdGluZyB0byBtZW1vcnkgYWZ0ZXIga2V4ZWMg
YW5kIGRpc3R1cmJzCnRoZSBuZXh0IGtlcm5lbC4KClNpZ25lZC1vZmYtYnk6IFZpY2VudGUgQmVy
Z2FzIDx2aWNlbmNiQGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL3VzYi9kd2MzL2R3YzMtb2Ytc2lt
cGxlLmMgfCA2ICsrKysrKwogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQoKSGkgRmVs
aXBlLCBSb2JpbiwKdGhpcyB2ZXJzaW9uIGNhbGxzICdyZW1vdmUnIGZyb20gJ3NodXRkb3duJyBp
bnN0ZWFkIG9mIGp1c3QgYXNzZXJ0aW5nCmEgcmVzZXQgYmVjYXVzZSBpdCBsb29rcyBsaWtlIGEg
Y2xlYW5lciB3YXkgdG8gc3RvcCB0aGUgZGV2aWNlLgoKQ2FsbGluZyByZW1vdmUgZnJvbSBzaHV0
ZG93biBpbiBjb3JlLmMgaW5zdGVhZCBvZiBkd2MzLW9mLXNpbXBsZS5jIGRvZXMgbm90CmZpeCB0
aGUgaXNzdWUgZWl0aGVyLgoKSXQgaGFzIGJlZW4gdGVzdGVkIG9uIHRoZSBzYXBwaGlyZSBib2Fy
ZCwgYSBSSzMzOTkgcGxhdGZvcm0uCgpSZWdhcmRzLAogIFZpY2Vuw6cuCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy91c2IvZHdjMy9kd2MzLW9mLXNpbXBsZS5jIGIvZHJpdmVycy91c2IvZHdjMy9kd2Mz
LW9mLXNpbXBsZS5jCmluZGV4IGJkYWMzZTdkN2IxOC4uZDVmZDQ1YzY0OTAxIDEwMDY0NAotLS0g
YS9kcml2ZXJzL3VzYi9kd2MzL2R3YzMtb2Ytc2ltcGxlLmMKKysrIGIvZHJpdmVycy91c2IvZHdj
My9kd2MzLW9mLXNpbXBsZS5jCkBAIC0xMzMsNiArMTMzLDExIEBAIHN0YXRpYyBpbnQgZHdjM19v
Zl9zaW1wbGVfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJcmV0dXJuIDA7
CiB9CiAKK3N0YXRpYyB2b2lkIGR3YzNfb2Zfc2ltcGxlX3NodXRkb3duKHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2UgKnBkZXYpCit7CisJZHdjM19vZl9zaW1wbGVfcmVtb3ZlKHBkZXYpOworfQorCiBz
dGF0aWMgaW50IF9fbWF5YmVfdW51c2VkIGR3YzNfb2Zfc2ltcGxlX3J1bnRpbWVfc3VzcGVuZChz
dHJ1Y3QgZGV2aWNlICpkZXYpCiB7CiAJc3RydWN0IGR3YzNfb2Zfc2ltcGxlCSpzaW1wbGUgPSBk
ZXZfZ2V0X2RydmRhdGEoZGV2KTsKQEAgLTE5MCw2ICsxOTUsNyBAQCBNT0RVTEVfREVWSUNFX1RB
QkxFKG9mLCBvZl9kd2MzX3NpbXBsZV9tYXRjaCk7CiBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2Ry
aXZlciBkd2MzX29mX3NpbXBsZV9kcml2ZXIgPSB7CiAJLnByb2JlCQk9IGR3YzNfb2Zfc2ltcGxl
X3Byb2JlLAogCS5yZW1vdmUJCT0gZHdjM19vZl9zaW1wbGVfcmVtb3ZlLAorCS5zaHV0ZG93bgk9
IGR3YzNfb2Zfc2ltcGxlX3NodXRkb3duLAogCS5kcml2ZXIJCT0gewogCQkubmFtZQk9ICJkd2Mz
LW9mLXNpbXBsZSIsCiAJCS5vZl9tYXRjaF90YWJsZSA9IG9mX2R3YzNfc2ltcGxlX21hdGNoLAot
LSAKMi4yMi4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
