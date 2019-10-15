Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB3C3D8456
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 01:16:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dxMSzftTJd64yyQZ1CcXrvAnW88qyexF0L/k93331wE=; b=rt23qJpj2/rqKhlcAAMVdX8HIy
	S6yS5140yNKL4wOTRUoTTqLcN4Nyk4sfcnsTpsd8j8jwDskHnMVcoYYnUi/wp2HzPtLQ9ZCoEFdYI
	BWp+REzf+y+i/h407Yp5i8bmegGmiNGGH7nqtF+NEml2PEvB0dFbuFGMg4s+6Y09rK3gKGfsjcIAx
	dixip2K698VrIvDGv6o3WoQaCOzrxcfBsGb6mJCiVqrONa9yY2ikND0huiUZ5HUG1YqU33S4TiPQJ
	FKGYCEkdwEQ0N7mn1qCrjggL0vqpDCJN6Ye+tL87j66wPG7NbZq/Ts1tVkciKQQl6gDV4w2XPFyhz
	6t/MLmYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKW3d-0000x6-Aj; Tue, 15 Oct 2019 23:16:49 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKW3E-0000o4-RM
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 23:16:26 +0000
Received: by mail-wm1-x343.google.com with SMTP id 7so792824wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 16:16:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=aNAs6kPI0EY6pn7Z/HKGoTnAn9Fg+8lDVNULApdAb8o=;
 b=q+DQTfaXWUQhd9zYHuEa6gh2mZ0ygfO9YEdRTjKmXqIW+o2QoLCRZnQLBV4UDgTBN+
 5xen2XY5FMfGbQMzCaAwV9hUZJQwoYunv3RqvnrE8mUq6d+s3LratUtrYlx6hex04X34
 +kgXPECc8SjeV/Qi3uYpxvoMgPOATv3aEjJgcK16fgIyFxZWMBdg3z268VWMta1+n0hw
 hNzzKhRhswQ2lyugteurCEwfHItRNbZ13LXHGSMZnp2XTKQ8fPeAeNbvTShSjUXOPec3
 lupTNlUwWi3OwIBNcXOavWf1tLGdMdEnPVD5yGmdWmHPXGfup5UvAMNXwnpgQSdGfFFK
 yo6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=aNAs6kPI0EY6pn7Z/HKGoTnAn9Fg+8lDVNULApdAb8o=;
 b=iXvj1J9Oc+naacY/+4U7NSJ0Y57MAaBieVAdfT4CMpY7OR1G1wmKIX6t9ttSCLQT/8
 HEMjjpmw8ie1JfRtybLsX7fla00bulXVCkj+tIyWjnZg3LFhg2pub1MV83pa2U4TlVv1
 2NJTJedKQ+LkAyVvMOaoeAy9fuI+oXwAD1w+XZtTB/7gj7uTaMjAC+3qxyqnkXny3aGt
 18HiddT1+Njf/HAQoQ8ndLqMARY7EnWQTZSg3nOoGoK/W3Tj83HaQkBumQImIWBUKocG
 tWmrXpRumL9vROiGYeXKb8rrCNVvOVNvE4dmFP9HC6ijn6T3LwnpKi1sv/C/eaMdtgmX
 XLHQ==
X-Gm-Message-State: APjAAAVWd4Yd9hwFFoV7w4fX1DfYKS4a7Dw8khH6oc13Ly2uj4c4hRyb
 bF5F1S3hEckvsTLyHHngzL+wJphv
X-Google-Smtp-Source: APXvYqxR2QnGjK1wq1rPUQCHQJ+ygbJGDWyl4CiJPCbbdmdtZ4C9QdyieYOb4ewVQMlHVMJgs2lnQg==
X-Received: by 2002:a7b:c011:: with SMTP id c17mr753112wmb.95.1571181382353;
 Tue, 15 Oct 2019 16:16:22 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id z9sm22583306wrl.35.2019.10.15.16.16.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 16:16:21 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com,
 Ben Dooks <ben.dooks@codethink.co.uk>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 02/11] ARM: bcm: fix missing __iomem in bcm_kona_smc.c
Date: Tue, 15 Oct 2019 16:16:07 -0700
Message-Id: <20191015231607.5878-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191008123453.1651-2-ben.dooks@codethink.co.uk>
References: <20191008123453.1651-1-ben.dooks@codethink.co.uk>
 <20191008123453.1651-2-ben.dooks@codethink.co.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_161624_907408_A8A8B5DC 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@lists.codethink.co.uk, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  8 Oct 2019 13:34:44 +0100, Ben Dooks <ben.dooks@codethink.co.uk> wrote:
> Fix the following sparse warnings from a missing __iomem
> in __bcm_kona_smc() function by adding __iomem attriubte.
> 
> arch/arm/mach-bcm/bcm_kona_smc.c:143:21: warning: incorrect type in initializer (different address spaces)
> arch/arm/mach-bcm/bcm_kona_smc.c:143:21:    expected unsigned int [usertype] *args
> arch/arm/mach-bcm/bcm_kona_smc.c:143:21:    got void [noderef] <asn:2> *static [toplevel] [assigned] bcm_smc
> _buffer
> arch/arm/mach-bcm/bcm_kona_smc.c:149:9: warning: incorrect type in argument 2 (different address spaces)
> arch/arm/mach-bcm/bcm_kona_smc.c:149:9:    expected void volatile [noderef] <asn:2> *addr
> arch/arm/mach-bcm/bcm_kona_smc.c:149:9:    got unsigned int [usertype] *
> arch/arm/mach-bcm/bcm_kona_smc.c:150:9: warning: incorrect type in argument 2 (different address spaces)
> arch/arm/mach-bcm/bcm_kona_smc.c:150:9:    expected void volatile [noderef] <asn:2> *addr
> arch/arm/mach-bcm/bcm_kona_smc.c:150:9:    got unsigned int [usertype] *
> arch/arm/mach-bcm/bcm_kona_smc.c:151:9: warning: incorrect type in argument 2 (different address spaces)
> arch/arm/mach-bcm/bcm_kona_smc.c:151:9:    expected void volatile [noderef] <asn:2> *addr
> arch/arm/mach-bcm/bcm_kona_smc.c:151:9:    got unsigned int [usertype] *
> arch/arm/mach-bcm/bcm_kona_smc.c:152:9: warning: incorrect type in argument 2 (different address spaces)
> arch/arm/mach-bcm/bcm_kona_smc.c:152:9:    expected void volatile [noderef] <asn:2> *addr
> arch/arm/mach-bcm/bcm_kona_smc.c:152:9:    got unsigned int [usertype] *[assigned] args
> 
> Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
> ---

Applied to soc/next, thanks!
--
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
