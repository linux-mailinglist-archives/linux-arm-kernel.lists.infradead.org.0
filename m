Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D992915FBCB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 01:55:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UCr/na8sgFsukssaO7eQHmZLn1ssgTCJqlng7D70bAo=; b=HN/OgKJ07FtXys/6oI6KiitO95
	nlR7J/wlSN037csT3gWXlIdhOWW2D1mcKAFUAsHYNOu4R/nmSFDQfzfXtoshpwrq34J+tJh9o77oT
	k6lXkBoFCI0MLVmjV2/QfSaX/IGXenS3NHxwGJpxhz2coVTnJUQ/v1d9+fnXFiGPYsRdKxkKTek2Q
	tYSuxLvUYvsV9UUdnOe/rttyzKgrid1O0iV7O/sogHDeYn/AcLej54m/Mpn0ojsiZ4Lo56DYFZYYO
	a1Dkjj5Nd1wIDtkzlW1w4Ty/nM7HO7XAOBwMwTpB2MgGmzfoXFykPGIxUZ2IaIqs4emdluBc5sIeF
	Kz7os/3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2ljV-00062w-Qi; Sat, 15 Feb 2020 00:54:57 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2ljO-00062U-7R
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 00:54:51 +0000
Received: by mail-pj1-x1044.google.com with SMTP id m7so1124792pjs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 16:54:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=t/Ae0ThnHgseaBLN7DLSea9YhAAyHLCHWTCUQ/Cd0kU=;
 b=dmb7qpA2kFDG/NeGqhlDaCtOJWwEN5yo+psjRdIA/bxIrzPR3KzcxIxfolRXzD6CcP
 2NC+PI/DxfYxt7rXTp8/PiZ1MGGbum2c4Kl5D03YD277KB61qw7nslgxLzjHjKHBhKcJ
 ZBsP0TljWgjefXI4xv3hkW+INuat00Dau0n8hyhSxpcHMPfWtp7ZgyCYqZznVJEEPtqG
 x+frDrsbZR9CKGFdbltKjXzek8iwS8kZGV0rJTshxAsX08Yr5lmS6KgA35GMs+Cr9XxZ
 OcaIJR0FTgSD16qySdGsQZIsrqWu058/ATIayvioSzsnYxp88B8ZMpiMzmRZiqdOQb83
 d02w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=t/Ae0ThnHgseaBLN7DLSea9YhAAyHLCHWTCUQ/Cd0kU=;
 b=p18MCrCGmsPYm9zoK3wshqN+R5AXtN0gDLCFvcJyugBxlN9JvliI3El28+jgTwIngm
 qlYxiYTol7T9wyrngE1RmBYyeACtHAaFBwMBtEijVXi5/+xGoXezA3z4/dtqN5OPhCbW
 37KTFk+zeUCXNVs7/M7Kqt1TGxx2/7TGpqRVO76MjLuhERGo/M470YRxXb8ZQToLZH2r
 9J2SPDrqOs/u0BhAY+BwuwzMWmB6gJuZIT8bZLavQb1hprqc9SNVEUViU+W/0Evpooi9
 0ScA2NHwDAn9zfr2nnLfwm7dvvft6GKwm60l7sKrS9tB6THN52n2P/2Er5FM4gLkPUWJ
 4KLA==
X-Gm-Message-State: APjAAAX2xSmNUpFeLHEsy5gBzLjnnvefzW4sB1ZkbBMQctoiv5kXMH8e
 oZVcUr433LXLVaCXYWZ1zFNqzg==
X-Google-Smtp-Source: APXvYqyjZLi/e9QST8sioy2HdXygGOdJ9mbIInRhBVQPczjn+5/OJPK4T7vMHeDuqoNVw8iYHt85OA==
X-Received: by 2002:a17:902:bb88:: with SMTP id
 m8mr5848515pls.63.1581728088542; 
 Fri, 14 Feb 2020 16:54:48 -0800 (PST)
Received: from nuc7.sifive.com ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id b25sm8108857pfo.38.2020.02.14.16.54.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 14 Feb 2020 16:54:47 -0800 (PST)
From: Alan Mikhak <alan.mikhak@sifive.com>
X-Google-Original-From: Alan Mikhak < alan.mikhak@sifive.com >
To: ard.biesheuvel@linaro.org
Subject: [PATCH 2/3] pci: designware: add separate driver for the MSI part of
 the RC
Date: Fri, 14 Feb 2020 16:54:25 -0800
Message-Id: <1581728065-5862-1-git-send-email-alan.mikhak@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <20170821192907.8695-3-ard.biesheuvel@linaro.org>
References: <20170821192907.8695-3-ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_165450_330872_16000017 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Joao.Pinto@synopsys.com, graeme.gregory@linaro.org, marc.zyngier@arm.com,
 jingoohan1@gmail.com, leif.lindholm@linaro.org, linux-pci@vger.kernel.org,
 bhelgaas@google.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi..

What is the right approach for adding MSI support for the generic
Linux PCI host driver?

I came across this patch which seems to address a similar
situation. It seems to have been dropped in v3 of the patchset
with the explanation "drop MSI patch [for now], since it
turns out we may not need it".

[PATCH 2/3] pci: designware: add separate driver for the MSI part of the RC
https://lore.kernel.org/linux-pci/20170821192907.8695-3-ard.biesheuvel@linaro.org/

[PATCH v2 2/3] pci: designware: add separate driver for the MSI part of the RC
https://lore.kernel.org/linux-pci/20170824184321.19432-3-ard.biesheuvel@linaro.org/

[PATCH v3 0/2] pci: add support for firmware initialized designware RCs
https://lore.kernel.org/linux-pci/20170828180437.2646-1-ard.biesheuvel@linaro.org/


Regards,
Alan Mikhak

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
