Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D092189520
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 06:20:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yeTXecKY5Xeg2k2LN2TBz5F/ENwaR58xug56ZsmnsPI=; b=YUXmh/Yo3B8LMl
	95PFlip20SiMKiJ3tvmbI5L/InsMNnqBinaRSA2ux3eEAQccmaJB8Rxa5llf6LxQ0qjrlhBB4Rme4
	vQKO/ucqX/moQHlYozi0+aN7AkCcctHaJfzJBriEhroQBxIbGss56rwO2GIss6sONze9aOBnbc3Eg
	Qpe3gmFFqLRUJEsNTjaaP6rziin4qZ70vhvbDa8YXw4mgDYU/463/bmOw2jQ9CxF/YUFT1B/MUX0G
	48tb45u8rLZ1oElgix+8vov0WPRzevQv0bdWKJLAMkuWYpVHpGSE018gKvolhebYVdpAQeIYCX5OM
	NmcNIKfIEnWMrTKJ8xsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jER7z-0006zA-P5; Wed, 18 Mar 2020 05:20:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jER7D-0006UR-T3
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 05:19:41 +0000
Received: from localhost.localdomain (80.251.214.228.16clouds.com
 [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3F1DF20771;
 Wed, 18 Mar 2020 05:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584508779;
 bh=Y+Tqf7yBwOUkHOr5SMJcL6/5ab7w4PsyOS+cz6VDSCA=;
 h=From:List-Id:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qTphW+AlhZhf3g3SL72dtYaSQIMmO+2qxJwrFZDRjfy+Yez98YZfAgy1+CKpTS/cn
 MDr082Aegs6Nt1W3UL6l+HfvbLyNzyE6jjKelFKCodZOVgb+7a6McfnLIxjwNPziuk
 DSvhUhcPbFuJQ1itKTZ/kPrOMRCLe6jF+c8y97J0=
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org,
	arm@kernel.org
Subject: [GIT PULL 3/6] i.MX DT bindings update for 5.7
Date: Wed, 18 Mar 2020 13:19:15 +0800
Message-Id: <20200318051918.32579-3-shawnguo@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200318051918.32579-1-shawnguo@kernel.org>
References: <20200318051918.32579-1-shawnguo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_221939_963212_55431E9D 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Shawn Guo <shawnguo@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Li Yang <leoyang.li@nxp.com>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCBiYjZkM2ZiMzU0YzVlZThkNmJkZTJk
NTc2ZWI3MjIwZWEwOTg2MmI5OgoKICBMaW51eCA1LjYtcmMxICgyMDIwLTAyLTA5IDE2OjA4OjQ4
IC0wODAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6CgogIGdpdDov
L2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9zaGF3bmd1by9saW51eC5n
aXQgdGFncy9pbXgtYmluZGluZ3MtNS43Cgpmb3IgeW91IHRvIGZldGNoIGNoYW5nZXMgdXAgdG8g
NTNiNjEyMjRjYTQwZGM0NTRiOTRiNWQ3MDVkMTdmMTllNzgwMjk5YToKCiAgZHQtYmluZGluZ3M6
IGFybTogZnNsOiBBZGQgVGVjaE5leGlvbiBib2FyZHMgKDIwMjAtMDMtMTYgMDk6MDY6NDIgKzA4
MDApCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCmkuTVggRFQgYmluZGluZ3MgdXBkYXRlIGZvciA1Ljc6CgogLSBBZGQgY29t
cGF0aWJsZXMgZm9yIFRlY2hOZXhpb24gaS5NWDYvNywgS29udHJvbiBMUzEwMjhBLCBUb3JhZGV4
IGkuTVg3LAogICBOWFAgaS5NWDhNUCBFVkssIGFuZCBMUzEwMjhBIGV2YWx1YXRpb24gYm9hcmRz
LgogLSBJbXByb3ZlIE5YUCBjcnlwdG8gYmluZGluZyBleGFtcGxlcyB0byB1c2UgZ2VuZXJpYyBu
b2RlIG5hbWUuCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tCkFuc29uIEh1YW5nICgxKToKICAgICAgZHQtYmluZGluZ3M6IGFy
bTogaW14OiBBZGQgdGhlIGkuTVg4TVAgRVZLIGJvYXJkCgpGYWJpbyBFc3RldmFtICgxKToKICAg
ICAgZHQtYmluZGluZ3M6IGFybTogZnNsOiBBZGQgVGVjaE5leGlvbiBib2FyZHMKCkhvcmlhIEdl
YW50xIMgKDMpOgogICAgICBkdC1iaW5kaW5nczogY3J5cHRvOiBzYWhhcmE6IHVzZSBnZW5lcmlj
IG5vZGUgbmFtZQogICAgICBkdC1iaW5kaW5nczogY3J5cHRvOiBkY3A6IHVzZSBnZW5lcmljIG5v
ZGUgbmFtZQogICAgICBkdC1iaW5kaW5nczogY3J5cHRvOiBjYWFtOiB1c2UgZ2VuZXJpYyBub2Rl
IG5hbWUKCk1pY2hhZWwgV2FsbGUgKDIpOgogICAgICBkdC1iaW5kaW5nczogYXJtOiBmc2w6IGFk
ZCBMUzEwMjhBIGJhc2VkIGJvYXJkcwogICAgICBkdC1iaW5kaW5nczogYXJtOiBmc2w6IGFkZCBL
b250cm9uIHNsMjggYm9hcmRzCgpPbGVrc2FuZHIgU3V2b3JvdiAoMSk6CiAgICAgIGR0LWJpbmRp
bmdzOiBhcm06IGZzbDogYWRkIG54cCBiYXNlZCB0b3JhZGV4IGNvbGlicmktaW14NyBiaW5kaW5n
cwoKIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vZnNsLnlhbWwgICAgIHwg
NjkgKysrKysrKysrKysrKysrKysrKysrKwogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvY3J5cHRv
L2ZzbC1kY3AudHh0ICAgICAgICAgfCAgMiArLQogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvY3J5
cHRvL2ZzbC1pbXgtc2FoYXJhLnR4dCAgfCAgMiArLQogLi4uL2RldmljZXRyZWUvYmluZGluZ3Mv
Y3J5cHRvL2ZzbC1zZWM0LnR4dCAgICAgICAgfCAgMiArLQogNCBmaWxlcyBjaGFuZ2VkLCA3MiBp
bnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
