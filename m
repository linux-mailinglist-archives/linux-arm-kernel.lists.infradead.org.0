Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C58EC1883
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Sep 2019 19:45:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oCoUcCyvP12BVMcvdHeNGjnr8ebjVJLVVy/aq+2X8sE=; b=KVW0BdLPuVwjR8zGd5+HBLlqCy
	JU/YQ7yI6qJRt+oFAbq6Z9Q+IDpoNFuuyERDoi1iwss57V8qS3BKPcWdVasL6ezxXGi2NJi8kCbxA
	l6E7SwMW5lMg+Nv7+Ppw+DkxKyETghcZJHXZlNMpCJ2O39H3KRgn+ZmBwRdrpvXi98+sghnbbRExJ
	F7UmNNAAWWo9i8mEDy5FZq1vDMwfTf9Up+q0aXp2SW23gFg3ILbzNiswzJlA5OqFUbiFNQFKvNwz4
	qYwepb9SFXTN/p8Cp1XzDKNQzeBwOIFRu/084lZIbkUgZhso/rLiuNix/OjD93jVXtMt0asMTjUtm
	VgsbNWXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEdFx-0006fy-IO; Sun, 29 Sep 2019 17:45:13 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEdAk-0001Zz-Ca
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Sep 2019 17:40:02 +0000
Received: by mail-wr1-x441.google.com with SMTP id v8so8466795wrt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Sep 2019 10:39:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=c7gRGregGvO6OT7bIf1xMnSekX73Q+P1Ihexxh5ywF4=;
 b=P+Wm3k9f1uAZZ/SNB31mpqeYK+eLX9OOI/5HnTmGYLG/xEEAABkB/ZkELx4gYu5Xbm
 xldLa/dGsozZm59dGU6mkT7mvdpDFMBGyt1bbgnMcEqMcS29+mRSylfBG0FjJzwEMUGX
 FMtpZXCK3CBaBp+BQSps4Faghk44UqFofjft3yyoUIbliBjWho4gNp0ojvLTyWC/bA7A
 ra0eCjtILW2dNCvVIg4dk4eIuBhzR8eav+cmNFwC7rjwLalcp7riVGbINgoBXKU33lRZ
 Ac//reNGK2z4JfmWjPs5eZWxnc9dCrFXU4DYb8j1HQZlk4bUUCxfw/6/pVuqeJJ9Rwn8
 VfMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=c7gRGregGvO6OT7bIf1xMnSekX73Q+P1Ihexxh5ywF4=;
 b=WJI06FZ3pyq3qm99SR5HWrH09zuR53IDzg247HSdsTq4zD08/kekzatMctiiHYF22B
 CG1+fAtV6SnBMeIGrkAOiVoo2RWu830asgtC6R6ykoH2nF5cv1z/vU+g5RXgd9rplIOs
 Jh0JTxJM/reKh/VoKluFX3oI24MO7gY1Fl4YRMPyzqs0PD7I0rGHjZHunKkLSdqEgHJJ
 S83ZXpd4Y67yJ4WD9dzsZEILHWOorPcahsCiq73IC/QgVrpVvzwN9d7PbIBjRO2G6PA8
 u0tKEyddfOjyXsgx9Hq1vP3fY+2p3Ok8v32iHxu/SubSN90MJraZJlbPv4ZHLyIGHOKI
 F07Q==
X-Gm-Message-State: APjAAAXvGlFVfn0vgSB75mA7c1agmr78ELvdm6+KkwRs3aWNwW0DQLuZ
 h6N3QNhsVD2oUWGNSgl3gjm7pg==
X-Google-Smtp-Source: APXvYqy9WWMhyZeEe+zBtNm2oB+VpCOYYMVVcZe2utYKqYu/+9/fbSSAPJvP2S5GFAGrlLBCyjUyjA==
X-Received: by 2002:a5d:620d:: with SMTP id y13mr9891717wru.86.1569778789010; 
 Sun, 29 Sep 2019 10:39:49 -0700 (PDT)
Received: from e123331-lin.nice.arm.com
 (bar06-5-82-246-156-241.fbx.proxad.net. [82.246.156.241])
 by smtp.gmail.com with ESMTPSA id q192sm17339779wme.23.2019.09.29.10.39.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Sep 2019 10:39:47 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [RFC PATCH 19/20] netlink: use new strict length types in policy for
 5.2
Date: Sun, 29 Sep 2019 19:38:49 +0200
Message-Id: <20190929173850.26055-20-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190929173850.26055-1-ard.biesheuvel@linaro.org>
References: <20190929173850.26055-1-ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_103950_569142_D6F104CD 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Martin Willi <martin@strongswan.org>, Greg KH <gregkh@linuxfoundation.org>,
 Eric Biggers <ebiggers@google.com>, Samuel Neves <sneves@dei.uc.pt>,
 Will Deacon <will@kernel.org>, Dan Carpenter <dan.carpenter@oracle.com>,
 Andy Lutomirski <luto@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Taken from
https://git.zx2c4.com/WireGuard/commit/src?id=3120425f69003be287cb2d308f89c7a6a0335ff0

Reported-by: Bruno Wolff III <bruno@wolff.to>
---
 drivers/net/wireguard/netlink.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/net/wireguard/netlink.c b/drivers/net/wireguard/netlink.c
index 3763e8c14ea5..676d36725120 100644
--- a/drivers/net/wireguard/netlink.c
+++ b/drivers/net/wireguard/netlink.c
@@ -21,8 +21,8 @@ static struct genl_family genl_family;
 static const struct nla_policy device_policy[WGDEVICE_A_MAX + 1] = {
 	[WGDEVICE_A_IFINDEX]		= { .type = NLA_U32 },
 	[WGDEVICE_A_IFNAME]		= { .type = NLA_NUL_STRING, .len = IFNAMSIZ - 1 },
-	[WGDEVICE_A_PRIVATE_KEY]	= { .len = NOISE_PUBLIC_KEY_LEN },
-	[WGDEVICE_A_PUBLIC_KEY]		= { .len = NOISE_PUBLIC_KEY_LEN },
+	[WGDEVICE_A_PRIVATE_KEY]	= { .type = NLA_EXACT_LEN, .len = NOISE_PUBLIC_KEY_LEN },
+	[WGDEVICE_A_PUBLIC_KEY]		= { .type = NLA_EXACT_LEN, .len = NOISE_PUBLIC_KEY_LEN },
 	[WGDEVICE_A_FLAGS]		= { .type = NLA_U32 },
 	[WGDEVICE_A_LISTEN_PORT]	= { .type = NLA_U16 },
 	[WGDEVICE_A_FWMARK]		= { .type = NLA_U32 },
@@ -30,12 +30,12 @@ static const struct nla_policy device_policy[WGDEVICE_A_MAX + 1] = {
 };
 
 static const struct nla_policy peer_policy[WGPEER_A_MAX + 1] = {
-	[WGPEER_A_PUBLIC_KEY]				= { .len = NOISE_PUBLIC_KEY_LEN },
-	[WGPEER_A_PRESHARED_KEY]			= { .len = NOISE_SYMMETRIC_KEY_LEN },
+	[WGPEER_A_PUBLIC_KEY]				= { .type = NLA_EXACT_LEN, .len = NOISE_PUBLIC_KEY_LEN },
+	[WGPEER_A_PRESHARED_KEY]			= { .type = NLA_EXACT_LEN, .len = NOISE_SYMMETRIC_KEY_LEN },
 	[WGPEER_A_FLAGS]				= { .type = NLA_U32 },
-	[WGPEER_A_ENDPOINT]				= { .len = sizeof(struct sockaddr) },
+	[WGPEER_A_ENDPOINT]				= { .type = NLA_MIN_LEN, .len = sizeof(struct sockaddr) },
 	[WGPEER_A_PERSISTENT_KEEPALIVE_INTERVAL]	= { .type = NLA_U16 },
-	[WGPEER_A_LAST_HANDSHAKE_TIME]			= { .len = sizeof(struct __kernel_timespec) },
+	[WGPEER_A_LAST_HANDSHAKE_TIME]			= { .type = NLA_EXACT_LEN, .len = sizeof(struct __kernel_timespec) },
 	[WGPEER_A_RX_BYTES]				= { .type = NLA_U64 },
 	[WGPEER_A_TX_BYTES]				= { .type = NLA_U64 },
 	[WGPEER_A_ALLOWEDIPS]				= { .type = NLA_NESTED },
@@ -44,7 +44,7 @@ static const struct nla_policy peer_policy[WGPEER_A_MAX + 1] = {
 
 static const struct nla_policy allowedip_policy[WGALLOWEDIP_A_MAX + 1] = {
 	[WGALLOWEDIP_A_FAMILY]		= { .type = NLA_U16 },
-	[WGALLOWEDIP_A_IPADDR]		= { .len = sizeof(struct in_addr) },
+	[WGALLOWEDIP_A_IPADDR]		= { .type = NLA_MIN_LEN, .len = sizeof(struct in_addr) },
 	[WGALLOWEDIP_A_CIDR_MASK]	= { .type = NLA_U8 }
 };
 
@@ -591,12 +591,10 @@ static const struct genl_ops genl_ops[] = {
 		.start = wg_get_device_start,
 		.dumpit = wg_get_device_dump,
 		.done = wg_get_device_done,
-		.policy = device_policy,
 		.flags = GENL_UNS_ADMIN_PERM
 	}, {
 		.cmd = WG_CMD_SET_DEVICE,
 		.doit = wg_set_device,
-		.policy = device_policy,
 		.flags = GENL_UNS_ADMIN_PERM
 	}
 };
@@ -608,6 +606,7 @@ static struct genl_family genl_family __ro_after_init = {
 	.version = WG_GENL_VERSION,
 	.maxattr = WGDEVICE_A_MAX,
 	.module = THIS_MODULE,
+	.policy = device_policy,
 	.netnsok = true
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
