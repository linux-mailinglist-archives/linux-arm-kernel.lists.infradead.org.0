Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBB31F248F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:23:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UyHHt0t4O+H8LvKUWSN0HS2zy5cNDXiXU4zuF+AZM+Q=; b=IoSbauycTwsPjK
	5OW8VVkcDR5Skdf5bmCear359HrVs+CUcQb6PexQgBe7DVskFVeejZaPM6Xmqk/x+zZ4cdYEeTCOL
	y6QvCyVE5+AmzTB5j+0IkQPtsS7yFXpIemKAHtZLp2r8uQZlIppyTR9zX3uCMKeNRVZUj6HuRUmsP
	YYpMdkbbomZnTDw7cs0PTDClnhdgOgWMEyXSHnMdIzaaYz0+MvhlFH2vN1nSOFNWn9uv84hQUcaJJ
	uKg1i1Gw6/1fv9dOOVPgRH6pOx55oGNeWQeu+WsZBMPSb51oAEzTQ8ZGZ0ZLt2qQDwyn6IXlXUGwi
	CzGyj8+SOe7216dypwVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiR6a-000296-2m; Mon, 08 Jun 2020 23:23:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiQwm-0006I5-Ku
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 23:12:54 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EA35920B80;
 Mon,  8 Jun 2020 23:12:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591657971;
 bh=Yf6tijfTtkC0daEZSzoDMhzmrg/OWgETF9rfSQTSNGw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=J/nmDo6tmPGgBdJDjGiJKR5FYeQQxJIC6ss1nCQ099jMorsuL2M6lyxjNxW2BtUBM
 NU7g61fvlN2XHm47aY7oxLIyjr/x/YIiCkKvOrCPbShWr65ls2lt3UDdBh3VyNkL6i
 OUnz7pb8nEMrwozIY5+fn2K6b0ciQ9kTDZ2wRq9s=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 034/606] ARM: dts: imx6dl-yapp4: Fix Ursa board
 Ethernet connection
Date: Mon,  8 Jun 2020 19:02:39 -0400
Message-Id: <20200608231211.3363633-34-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608231211.3363633-1-sashal@kernel.org>
References: <20200608231211.3363633-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_161252_840680_A32E8902 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
 =?UTF-8?q?Michal=20Vok=C3=A1=C4=8D?= <michal.vokac@ysoft.com>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWljaGFsIFZva8OhxI0gPG1pY2hhbC52b2thY0B5c29mdC5jb20+Cgpjb21taXQgY2Jl
NjNhODM1ODMxMDI0NGU2MDA3Mzk4YmQyYzdjNzBjN2ZkNTFjZCB1cHN0cmVhbS4KClRoZSBZIFNv
ZnQgeWFwcDQgcGxhdGZvcm0gc3VwcG9ydHMgdXAgdG8gdHdvIEV0aGVybmV0IHBvcnRzLgpUaGUg
VXJzYSBib2FyZCB0aG91Z2ggaGFzIG9ubHkgb25lIEV0aGVybmV0IHBvcnQgcG9wdWxhdGVkIGFu
ZCB0aGF0IGlzCnRoZSBwb3J0QDIuIFNpbmNlIHRoZSBpbnRyb2R1Y3Rpb24gb2YgdGhpcyBwbGF0
Zm9ybSBpbnRvIG1haW5saW5lIGEgd3JvbmcKcG9ydCB3YXMgZGVsZXRlZCBhbmQgdGhlIEV0aGVy
bmV0IGNvdWxkIG5ldmVyIHdvcmsuIEZpeCB0aGlzIGJ5IGRlbGV0aW5nCnRoZSBjb3JyZWN0IHBv
cnQgbm9kZS4KCkZpeGVzOiA4NzQ4OWVjM2E3N2YgKCJBUk06IGR0czogaW14OiBBZGQgWSBTb2Z0
IElPVEEgRHJhY28sIEh5ZHJhIGFuZCBVcnNhIGJvYXJkcyIpCkNjOiBzdGFibGVAdmdlci5rZXJu
ZWwub3JnClNpZ25lZC1vZmYtYnk6IE1pY2hhbCBWb2vDocSNIDxtaWNoYWwudm9rYWNAeXNvZnQu
Y29tPgpTaWduZWQtb2ZmLWJ5OiBTaGF3biBHdW8gPHNoYXduZ3VvQGtlcm5lbC5vcmc+ClNpZ25l
ZC1vZmYtYnk6IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+
Ci0tLQogYXJjaC9hcm0vYm9vdC9kdHMvaW14NmRsLXlhcHA0LXVyc2EuZHRzIHwgMiArLQogMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
YXJjaC9hcm0vYm9vdC9kdHMvaW14NmRsLXlhcHA0LXVyc2EuZHRzIGIvYXJjaC9hcm0vYm9vdC9k
dHMvaW14NmRsLXlhcHA0LXVyc2EuZHRzCmluZGV4IDBkNTk0ZTRiZDU1OS4uYTExNzNiZjViZmY1
IDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9pbXg2ZGwteWFwcDQtdXJzYS5kdHMKKysr
IGIvYXJjaC9hcm0vYm9vdC9kdHMvaW14NmRsLXlhcHA0LXVyc2EuZHRzCkBAIC0zOCw3ICszOCw3
IEBAICZyZWdfdXNiX2gxX3ZidXMgewogfTsKIAogJnN3aXRjaF9wb3J0cyB7Ci0JL2RlbGV0ZS1u
b2RlLyBwb3J0QDI7CisJL2RlbGV0ZS1ub2RlLyBwb3J0QDM7CiB9OwogCiAmdG91Y2hzY3JlZW4g
ewotLSAKMi4yNS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
