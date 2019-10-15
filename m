Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF74CD8453
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 01:16:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jUD16+m8twqExsh/KpGOAemqbcrwZ+wCHksRze6sKtI=; b=IwPrf4jFA/TD2EZ2uTEHVDLzcz
	isJRallNInJ1RP04d482sBhU+Km009g/XPVUskeeABR7Q0oyhHqK1GsanAeXgNR2xZJ5+igESFvgG
	MdJakb0YZRqLD2PaODx5vQVYoeehZYi0V5pbT51TlNwoqJ0vnkzTEIYxjHU9eCc3794uL+GCO/AHC
	qwHMasjZItPBftl/HHynXYDgsKh0Rgoqs4hRNHxVDUJuj6/z0Nq/Z3jdb5eL72O7TSA4c5ygsja/V
	lNpFe2nSF1yKC+ZwTeG2WV7LF4M2zO7CchpGgaQcFMpT3a2JUdEbbc7CUFC50iExe6pCEQPtupWhu
	bI6EhviQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKW39-0000a5-8D; Tue, 15 Oct 2019 23:16:19 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKW2u-0000Zk-G7
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 23:16:05 +0000
Received: by mail-pf1-x444.google.com with SMTP id v4so13443627pff.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 16:16:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XcqwgTyWwnzJ0/Y/r5c1iP8WwHq+w7KYKvHAKkYdOuA=;
 b=NXvMwrG18PWdB4t20dUCKi4MOxd8J/HmPkeosPKmx0lYchuxtCZCGiTdFgzMecUFl+
 AdsJd7iYRtkKa6Yx2tD+/7iRVrUokzIESYQQWlzy9tH1TbX6xfWGZUQ+4N5FFOxt9sOn
 pZ/VflmXQxvhpgWYKp8If8uRu7ewlY44xuQNNyZaHlMVbohPN0SuqDBhAIdzDcOI3kI/
 PiykSzqPZgFOg9P7N1wafFjH3Id/q08W1SpspEW5ulk6v51s0rdENLLi4ogJtBVOHt3s
 /WRmaOpPtwfn/kTB4Zv4DZBDNWpZBkGlK/TtxJW1ZN8KPuxWQHA2HytSwff+dbN859wW
 bFDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=XcqwgTyWwnzJ0/Y/r5c1iP8WwHq+w7KYKvHAKkYdOuA=;
 b=R6h2ONoLFlVgcoIeFIxGVJ3RmkLxRlFkCeaWKeTZtk7q39DZHUa+jIzVrPDDKPtIxY
 t4hqpH8CdWqjQQ6T5SxOHl/HvtUYbR/wal4vhQ9SkWHPyrHTJzPFJeuZe8KKrokoLXZb
 MuvkqSRG4h2Uc/e7hmYUiqwLdAIZoqktKu2FQoFdNHEKTeqidFJP2MGoVMyk4ZXYncpk
 0eAVKt552WeRfF7vzBct/gqRQ1kcqYUR5RPuiJ79FLM2+MznryWa9zDbdWcRLvFGqOtR
 0ajXs4+WwXvnmBdtW0JK/oaw3bTqhpKmajE2irb71AOCtsrJR9aaHL2yswFdipT5QSRI
 wiLA==
X-Gm-Message-State: APjAAAWmXbiQwVBQLpEg8lR9wOtPoD/WJN/p+zpnF027NiOFnHVb/Pcy
 MPDc8GvABZAlzGzPgBf2Bh4=
X-Google-Smtp-Source: APXvYqyFVsWawwG1sfTHwbOsPbndOvKFFGZSMh0PD9f5vb0Zg9Usio4iPD6v7vw6huwIrtoM5FoZCQ==
X-Received: by 2002:a65:6458:: with SMTP id s24mr40030005pgv.278.1571181363056; 
 Tue, 15 Oct 2019 16:16:03 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id 30sm342774pjk.25.2019.10.15.16.16.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 16:16:02 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com,
 Ben Dooks <ben.dooks@codethink.co.uk>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 01/11] ARM: bcm2836: include local platsmp.h for
 bcm2836_smp_ops
Date: Tue, 15 Oct 2019 16:16:01 -0700
Message-Id: <20191015231601.5792-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191008123453.1651-1-ben.dooks@codethink.co.uk>
References: <20191008123453.1651-1-ben.dooks@codethink.co.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_161604_540362_1544C96A 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

On Tue,  8 Oct 2019 13:34:43 +0100, Ben Dooks <ben.dooks@codethink.co.uk> wrote:
> Include platsmp.h for the definition of bcm2836_smp_ops to fix
> the following warning:
> 
> arch/arm/mach-bcm/platsmp.c:334:29: warning: symbol 'bcm2836_smp_ops' was not declared. Should it be static?
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
