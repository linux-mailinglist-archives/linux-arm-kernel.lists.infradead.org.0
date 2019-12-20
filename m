Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B40512827A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 19:54:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3AXaCijGibap+xkOkdvBzyaEI6qW5M4EoE/gxrduAcI=; b=gXEubq3VjmRnPPh3xAuPLE1z75
	ODYsYH2Bgg+v95jdr8k+egZ1HJzwcJ6jiCHtXXp5ZrkdtFWSJD2xyPGD4WuMRTCB0Y8oarNykYQOF
	9eNbmu3Hv2PI7WHBlGTnztzYR2JTujDSTXH0VsfpxwJlRAosF2US/FPlliZchI/80u+Qi+/NkfQe6
	tesMC8Z3InJNNprivLMg4ftcctTpLv3uDdrQLhSKFB085v4XnOmHrJFMp7eco40Le4AlExTmjVUTq
	jy5yWJKbo0fHhsaMJ1p3jbVjjTm9231GHcAWdYPPihujhBJtE4Zg5hVDbZWACUfNPgpX3LqK9htcD
	Iirrkc1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiNPn-0002SL-K1; Fri, 20 Dec 2019 18:54:19 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiNPf-0002S3-Dh
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 18:54:12 +0000
Received: by mail-wr1-x441.google.com with SMTP id j42so10356693wrj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Dec 2019 10:54:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=TrbY94qgfc3+UcgXhbi/ANI583h6IbUS67gFLb/gN+k=;
 b=QD2MJT6wmUkO2cdIzOyTv5s0LB/DXWT0yKNT9MrizoxAgozyKGi5dHk0OfhInu6d0A
 1x7OmPHwUpoxTnRjYPTQ5Ek4QEd0dBQN9/23kwBZkK9e+FKLLgSlbJmdX1y4i2Oz5BcS
 T5PTC+WIG497h/2donR358VhmJHjLuj/0+jFilop20MDhPgxqLayu5dkHCabQaWXPxO0
 t6V0805n3k8iUft06jNYxNLDXraw4cHUh5+G4NBVS/F6onSXK25nfIta6PdBH+5K55UG
 RdYeD6qzwvBkCKlGbh1XObUi957mv73Offsy/+g9KCz25hjw4dIRxzCAEp9p3W4nZNPl
 lHcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=TrbY94qgfc3+UcgXhbi/ANI583h6IbUS67gFLb/gN+k=;
 b=BUQmbBACQiJF6ZtmOB2w0m/2P2OyYk3LAAAIm37D8YlNyR2xqWl3z79oS6D2hV9M0o
 oZre2Uk1RLgFENB+60B2KksgevcN4t7THJcRsTm3BxyGpbvEF1cV3AWqDSK+ZEx/LoLu
 8JchuUpx3Qpdmx7AsmqYvUNsNBCDr6chYEAuv0YMt9J3duNZIIjaojJm66rBdToT/eTc
 W1pRTNflz8D1XaEt/s1WbibD04GxNItPOdwtMBjuVBQD56+RDKauOk3mBHvGeHGG7qiO
 CLgczOHsA5+wN6O0sTs8H3PL1dLU7kjs/a/LQbx8e1y0JEWFs++9TPK3a+ojv4+/VHMQ
 WPKg==
X-Gm-Message-State: APjAAAUXYh4OEaogl8cK0O5LCsDFqFcA2mljF8bRV5j0N3/DmRw8vDXV
 aFZNS/Rco5Br2ep9Q/uUxHw=
X-Google-Smtp-Source: APXvYqz1odYwpyJ7ltBG2KoCmQclnoyc7ENMv/Njh/Miu9dGxzlMXF1dWCYbUmed76MksXEvNsR11g==
X-Received: by 2002:adf:bc87:: with SMTP id g7mr17390983wrh.121.1576868049922; 
 Fri, 20 Dec 2019 10:54:09 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id q8sm10256857wmq.3.2019.12.20.10.54.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Dec 2019 10:54:09 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: brcmstb: Add debug UART entry for 7216
Date: Fri, 20 Dec 2019 10:54:06 -0800
Message-Id: <20191220185406.1886-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191210224859.30899-1-f.fainelli@gmail.com>
References: <20191210224859.30899-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_105411_459024_FC4E6BF7 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: open list <linux-kernel@vger.kernel.org>,
 Justin Chen <justinpopo6@gmail.com>, Russell King <linux@armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 10 Dec 2019 14:48:56 -0800, Florian Fainelli <f.fainelli@gmail.com> wrote:
> From: Justin Chen <justinpopo6@gmail.com>
> 
> 7216 has the same memory map as 7278 and the same physical address for
> the UART, alias the definition accordingly.
> 
> Signed-off-by: Justin Chen <justinpopo6@gmail.com>
> [florian: expand commit message]
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---

Applied to soc/next, thanks!
--
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
