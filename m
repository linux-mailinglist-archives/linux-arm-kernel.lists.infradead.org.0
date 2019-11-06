Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDED1F0D59
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 04:52:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UFuPw02ksP6Kp6oFR8yrRbZvs7DKl7Tj9/7AKdcFC1M=; b=j5mw9PEE0WjgQ7aNlM5DlJyPWE
	NTP460I8e+LEBuf5DdE/A8vMYVSzeG4zXhNpk8F/Ey6eHrsLV42QS8aKJojN+QM1PEOLl7EUUHSMm
	AHt7OTydd2D5MLaz4u1p6EB64bzqgDcmCM6AJreT+JxdXd4bWhynB+jYPHZ1D62Wj9Md5Ne6sLY7n
	gtYw8KWEVDAg0Jo6Dc7wt7512qkZcjjt1jWpgROHm5b00Qoz3WUoZso0d0X1f0lxK0nIHL8cLAnJP
	vGzfQ8bvWFEHFFdl5UULQ9xaWlF0mMelIajVJk7QnNApPwvlHwFX7OQthKEt2MiMnDnwKgc+eHNGP
	wLaKN16w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSCMw-0005ud-I1; Wed, 06 Nov 2019 03:52:30 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSCMo-0005u0-FQ
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 03:52:25 +0000
Received: by mail-pf1-x443.google.com with SMTP id r4so17788550pfl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 19:52:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=sx96zVPcELtZIsYE4zoBkKq0Xjly1M5M53X3DvYi9C4=;
 b=GMUMzFxVbyLFYTqYquxsxCNlDNFW10Mbv2MgltYxW3zZ2rP4+oTW+xS3YZKNgqKzWJ
 JKFgzXT4xUXrmCx4G/H5nmj72E7PxRag1pvpHbUFAI4vbrsLMKScWeMwTDuoKj8NYmzv
 hajajanLbUMnCyE18WTSsXpIk+jR0HnezapIVRGLzNrPKQTU4Ep2yVdWfGIB6PEzKCiu
 TLEEjqwT6jIi41EtB3jPRhSGcEAo25bI85UR8zXMLZtkq4KjY2r+iXlGoKzxeAXok5H0
 0SfMzM8ZK4E1VU4m+Yo/LjaWQInZY7+/HGOyjf/mAjeKpAoj3ql20xDOreMVAzd+IwOQ
 fJog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=sx96zVPcELtZIsYE4zoBkKq0Xjly1M5M53X3DvYi9C4=;
 b=NoYd55o5aLMfDRRRIpDyVDoHQbEsjMXTIkA388V9mwQNU58s2ztIZECy9Okisq0KgG
 AXgvxDIxhUExmHKhQu3nYIpZCACeQvQwrohjDUz+mOFNWwQqNy1iTTeCAj/xNn5b5P/C
 vsNcyomxQQou+PLHWnWr8Xp/c6nHRc/gub9jPv1wn3i8jX+k/64ki7YZ35ZLA+L73QWg
 n6a9eLUqXCY7/gqoqL3qKoPpzScxoKgsy+9+Qn15WFPGEXTjtBE0MBMgHh4wTUFfeyxe
 zW7IKNV6lIlFsQ1ndsRsPvYzJjS8ePLDgD8ra+YgK86IPtMPEHhbpQAFs3wFT0O+utPU
 QPZg==
X-Gm-Message-State: APjAAAX/DNXCRtKx5mOlkVxoShTodFe2XKQG2je7bG7UD2XTS2U2y9/c
 oGDZsCfOu/RlRyDve2CNByU=
X-Google-Smtp-Source: APXvYqx4kbxayxWGHOb/LWevDP3sPPd8IOL4763xeZyQby+BdD2cRyF/Mkg8XoTurlPs4pDkulB96A==
X-Received: by 2002:aa7:82c9:: with SMTP id f9mr611996pfn.121.1573012341408;
 Tue, 05 Nov 2019 19:52:21 -0800 (PST)
Received: from localhost.localdomain ([137.97.95.36])
 by smtp.gmail.com with ESMTPSA id z11sm26986819pfg.117.2019.11.05.19.52.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 19:52:20 -0800 (PST)
From: Jayachandran C <c.jayachandran@gmail.com>
To: arm soc <arm@kernel.org>,
	Robert Richter <rrichter@marvell.com>
Subject: [PATCH v2] MAINTAINERS: update Cavium ThunderX2 maintainers
Date: Wed,  6 Nov 2019 09:22:03 +0530
Message-Id: <20191106035203.5389-1-c.jayachandran@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191105154654.4675-1-c.jayachandran@gmail.com>
References: <20191105154654.4675-1-c.jayachandran@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_195222_540876_39E7A01D 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: obsidianresearch.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: obsidianresearch.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (c.jayachandran[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Jayachandran C <c.jayachandran@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jonathan Corbet <corbet@lwn.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

jnair is no longer at caviumnetworks.com (or at marvell.com). This also
means that Cavium ThunderX2 will now be maintained by Robert.

This is probably a good time to map various email addresses used for
my patches to my personal email ID, update .mailmap to do this.

Signed-off-by: Jayachandran C <c.jayachandran@gmail.com>
Acked-by: Robert Richter <rrichter@marvell.com>
---

v2 changes
 - Add Robert's Ack
 - s/mailcap/mailmap in commit message

Hope this will be merged thru the ARM SoC tree, let me know if I
need to send it to someone else.

JC

 .mailmap    | 4 ++++
 MAINTAINERS | 1 -
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/.mailmap b/.mailmap
index 83d7e750c2fc..fd6219293057 100644
--- a/.mailmap
+++ b/.mailmap
@@ -108,6 +108,10 @@ Jason Gunthorpe <jgg@ziepe.ca> <jgg@mellanox.com>
 Jason Gunthorpe <jgg@ziepe.ca> <jgunthorpe@obsidianresearch.com>
 Javi Merino <javi.merino@kernel.org> <javi.merino@arm.com>
 <javier@osg.samsung.com> <javier.martinez@collabora.co.uk>
+Jayachandran C <c.jayachandran@gmail.com> <jayachandranc@netlogicmicro.com>
+Jayachandran C <c.jayachandran@gmail.com> <jchandra@broadcom.com>
+Jayachandran C <c.jayachandran@gmail.com> <jchandra@digeo.com>
+Jayachandran C <c.jayachandran@gmail.com> <jnair@caviumnetworks.com>
 Jean Tourrilhes <jt@hpl.hp.com>
 <jean-philippe@linaro.org> <jean-philippe.brucker@arm.com>
 Jeff Garzik <jgarzik@pretzel.yyz.us>
diff --git a/MAINTAINERS b/MAINTAINERS
index cba1095547fd..21c7a8a25e00 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3737,7 +3737,6 @@ F:	drivers/crypto/cavium/cpt/
 
 CAVIUM THUNDERX2 ARM64 SOC
 M:	Robert Richter <rrichter@cavium.com>
-M:	Jayachandran C <jnair@caviumnetworks.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	arch/arm64/boot/dts/cavium/thunder2-99xx*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
