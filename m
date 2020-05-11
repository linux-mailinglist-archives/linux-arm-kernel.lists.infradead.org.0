Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 174F71CDBA8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 15:46:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ICKQnA9TfVOiGruaO8kiN16UDUUS+EFn/tjIN0jqXY=; b=WapAox6D1bLfzi
	wLe0HIbp0SQBtMtjGiI55WYzGKH78Vxpq1+sCA5zgpBoBomSiRgGBc+iAuhZiWP8w4m+Iwa9F3Lkw
	FK+mS7bUUK3pPDb1piFfJHlmgUN3nPWvy0nQs4Qf/lFQRkPl4eOXQW0SZAVwibAAZqOB0I1ReJ35F
	wb4R2gtA0TkM8yhDgOpf1OqffDll0QXMfEGAS7YQGjAZn6oop50GmBPGjkPCDqV1VPxEhJmL/2fvy
	nDgf6hpXJxhNfBD9Kk+A0u+pTbFais7krNW1akkgqaF8peQB161oS4DLzAEZKRc6i5MdE1oW/4uww
	aExUUEY2QgpGs56v2Y2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY8l4-0004r5-JN; Mon, 11 May 2020 13:46:14 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY8kr-0004pp-NH
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 13:46:02 +0000
Received: by mail-wr1-x443.google.com with SMTP id w7so11041514wre.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 06:46:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Q2BxZKtzYVJdnhKDk6kHCLe3qRzlCf6s3v+h+pLemAg=;
 b=vt3tIM8SXmyGE76DoZTOdmElnTIl4bMIltVntIAc0he88Sp9qJRB/V82zw+WrS5ihG
 EJG7w8kdcUMgSuW4nZHMeP55c/FdVaRUqO93oTbSH/bkPfFrlHPMjgPH5/AEfRuoUu/U
 Ak1f5Qmm6SUMcApwnUw266CxwLZzc4MxBgHsCu1MEztG1efH6KjzjCsHLbufXO/JHkyg
 4qqYKPjp/oW9mizuM4Pn3HGbqhzheYTNDFkaLvftrCVNM/VYgWqz1bSWSuZetRx/q5K6
 et6c5WXisyQm9pdE/trnsAi0Rc4P282oAY4w74LRTcifJkmjSnGbQrMkFE8BBK/CLrHU
 kIFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Q2BxZKtzYVJdnhKDk6kHCLe3qRzlCf6s3v+h+pLemAg=;
 b=OR86EfGkwOqn1eLHgazdJQQr1PXIAiAGzLxiw+Rc3/0wDRr0o6WdkpNn1ZGndgFj7j
 pMhjY77/zc8s7sb4pC8qKLg40DtvqhN0co9E+HBVraacyM9YCoYDNmEa+sTDrCCXdIo7
 ISDgQMi6O/owxlydMSXNxwVttVYK6X/1mP+AZr9/BVS+4xC3q7y1w005Ed9PbPfR0WbQ
 e9S1u+pNDsgX5EPJYgqM79XydYcmJQjfR/2s2+hd8SB/0yjBIAYyD6ClzsoDg9S+VNyF
 vLOvNLks1uapDO8uoB7xeVNoO4Ntox4huiCRi29BgSniuniCneBVj/AsUIZQIuoIpHUc
 FE2g==
X-Gm-Message-State: AGi0PuZ9rqi1bIISkF0UquxVY3h+NyF0dtTiNv9rUN7ogPBm447lGbEu
 LreWLFV5kVqY8kwzgCh1o5OQJA==
X-Google-Smtp-Source: APiQypIZNeq7ry3Hj06e+ssDcQCx46NyjFOu4uu1tNoXA1NhJj0eKvkluOlZpeHyLFtt4scGQaFK5w==
X-Received: by 2002:adf:810a:: with SMTP id 10mr19863253wrm.101.1589204759978; 
 Mon, 11 May 2020 06:45:59 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:110:d6cc:2030:37c1:9964])
 by smtp.gmail.com with ESMTPSA id q184sm27152043wma.25.2020.05.11.06.45.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 06:45:58 -0700 (PDT)
Date: Mon, 11 May 2020 14:45:55 +0100
From: Quentin Perret <qperret@google.com>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH v7 06/15] PM / EM: change name of em_pd_energy to
 em_cpu_energy
Message-ID: <20200511134555.GC29112@google.com>
References: <20200511111912.3001-1-lukasz.luba@arm.com>
 <20200511111912.3001-7-lukasz.luba@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511111912.3001-7-lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_064601_753018_CA5700B0 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: nm@ti.com, juri.lelli@redhat.com, peterz@infradead.org,
 viresh.kumar@linaro.org, liviu.dudau@arm.com, dri-devel@lists.freedesktop.org,
 bjorn.andersson@linaro.org, bsegall@google.com,
 alyssa.rosenzweig@collabora.com, festevam@gmail.com, mka@chromium.org,
 robh@kernel.org, amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com,
 khilman@kernel.org, agross@kernel.org, daniel.lezcano@linaro.org,
 steven.price@arm.com, cw00.choi@samsung.com, mingo@redhat.com,
 linux-imx@nxp.com, rui.zhang@intel.com, mgorman@suse.de, orjan.eide@arm.com,
 daniel@ffwll.ch, linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-omap@vger.kernel.org, Dietmar.Eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie,
 tomeu.vizoso@collabora.com, sboyd@kernel.org, rdunlap@infradead.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, b.zolnierkie@samsung.com,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Monday 11 May 2020 at 12:19:03 (+0100), Lukasz Luba wrote:
> Energy Model framework supports now other devices than CPUs. Refactor some
> of the functions in order to prevent wrong usage. The old function
> em_pd_energy has to generic name. It must not be used without proper
> cpumask pointer, which is possible only for CPU devices. Thus, rename it
> and add proper description to warn of potential wrong usage for other
> devices.
> 
> Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>

Acked-by: Quentin Perret <qperret@google.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
