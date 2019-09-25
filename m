Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF8ABE255
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 18:19:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=svJiKKXQbZhcBqaMCYOR+QJq4Xyfh8vS8XOFavJ1xN4=; b=s49F3tVEudLkst
	idKyEYasrezDr3hwIbn1vG6bwthx/QN/ubdUH0eb9yHF5lntq9QkkURA3PWuw9yUZdsVqbuAMVHiu
	RQlN9SnHmNvEBYss7Mbq8OpZ9Np6QtL0RiUBDvQfnusHwMqEEfuz9pu+sfaSP/RJjo3ll+AUHA6lx
	mZbP84fc35uIp6TJL2pkZfVSEHrDNG6gId0gvW/IUDvrfhEtNK/13MEm0nNfVVjLEi5gr6bf+x82F
	2br2B2vlE9hhns2zo6UC4feN5CiRf85OzFqP9fpg/GKoTDhuEsVQMQFrqP03FG0yl4woJo9Lq4Q/j
	QCvoPOqHNYnwGcEVBacw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDA0J-0008I8-56; Wed, 25 Sep 2019 16:18:59 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD9vh-00045V-PV
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 16:14:17 +0000
Received: by mail-wr1-x441.google.com with SMTP id h7so7644519wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 09:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0Jn67cgHpegjUHsejza3rXvNu+oyRcsIfVJ14lUdJdc=;
 b=XRKs2NYw1E8U9jJNC8URLm1v/D0E45ZGzjruLuYncb+se4PRgodkTOSbJKomErYA8A
 aBx3lV2el3sxyCNKIL4eXbNQPuR1xtPQ7AqCKcspizIUydpWF8XSp1d/12gAYylUfZkW
 Vq2CGQalEf6bYg4NWNLgpr4GZbbJ3I7nj8HX65C6pUaO256ht0C6HhxLS98Arc0Bdtbf
 t9NJmmRz17ZRwZ2KtyMCn2begsYmiEYQfixNVxYVzjqwsxv2xGCLr4vQAJz+w5NX5tiV
 0aMtvtcgmSHOgQautTSanq/Mc/wFnViTtqZPwXuEVF+Ycc9wGZRGOk4F+AEA8/eJCIF0
 qasQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0Jn67cgHpegjUHsejza3rXvNu+oyRcsIfVJ14lUdJdc=;
 b=TGUDq4oGi0Bq1BLRGB5WbLfViAtOpOAxYw4PDGmuaVDOCOag+apY0cKzjKHxjahvgX
 pwD6c1XbM07JTWSW/98M5FsAcB2qR5ynh8W3RraOnL8uH72MWtuA9Efnk3QPBQHvVlMb
 rPPDj1R84c0tUMgt14h08GYB65KjXMA7geyUhH6OGoOc/13KKIjHPSX2fi5RHZ1k6pR4
 kXKn1VfqlZ3Uwdv/w6kDQK10DyodITwVoF1S/HIYDB83X5+DlUuYWvHQfoDErBzhQX9j
 vAfjBGEM10dLwJeMk/aYca4LVGKInBLmmCqhBZmG4bU1aBreoiOYHs+TXb2knWLWVL6Y
 doHg==
X-Gm-Message-State: APjAAAUFNVJ08PYOKVDUODzWfZnE1U0G8YVC7FbXcGtIqc2zXvfUCbrh
 kUYxJV33O3VHq7ybh7B/Knagjg==
X-Google-Smtp-Source: APXvYqxG3ZsPD1p2O9Mgdd9cJrxp7TwXatNXcNgf+8foDbIum7T7zIqBBIHsTAaJyjCie+BmcAs/Ug==
X-Received: by 2002:adf:e908:: with SMTP id f8mr9903669wrm.210.1569428052551; 
 Wed, 25 Sep 2019 09:14:12 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id o70sm4991085wme.29.2019.09.25.09.14.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 09:14:11 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [RFC PATCH 16/18] netlink: use new strict length types in policy for
 5.2
Date: Wed, 25 Sep 2019 18:12:53 +0200
Message-Id: <20190925161255.1871-17-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_091414_132361_26CCDF43 
X-CRM114-Status: GOOD (  10.98  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Bruno Wolff III <bruno@wolff.to>, "Jason A . Donenfeld" <Jason@zx2c4.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg KH <gregkh@linuxfoundation.org>, Eric Biggers <ebiggers@google.com>,
 Samuel Neves <sneves@dei.uc.pt>, Will Deacon <will@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Andy Lutomirski <luto@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
