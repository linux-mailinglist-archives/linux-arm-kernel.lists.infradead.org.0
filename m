Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF721D4A29
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 11:57:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tKDua0AeGYnaBN9YrBVfXwEyUf9pNGkqHMmQHhWJQvw=; b=OJ49+wxEU3Ts9y
	1MtC+Y4DMkInkB6/FFkww8sgKLWc544oBD2yBDs+/pz2g5FdOZzD/YkHiyoATQLE3WELg9mRt3nWz
	eMp3cpav4rj8qnhsDqP6Lqgnmy2qSmoCG1l8RbU8gcxo/p4CJFSDlFgGn4Um2uyTRyQNu3RNj5Kix
	W7aY1uW4XQqw3vUEGz0E2iCLpt2xyvk1kOp9gSzWNKKiFGrZW/8ZLVKnquiJ8cfuWI8Gi8GV1hds1
	jcEUpPOViePYdM1kHQSz3kqoYnhMLhUpWYpJXn8y9chguLxoXjxqgiItXXWU61V9kOs5Hbr0Pt6pM
	RIM25JiVHe0a/MP+BT7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZX69-0003RZ-1X; Fri, 15 May 2020 09:57:45 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZX5y-0003Q9-61
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 09:57:38 +0000
Received: by mail-lj1-x22b.google.com with SMTP id g1so1566346ljk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 02:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nMOYfNEZkqpOwxdikoGlBP08jiU7JwSsPnMDuh6RRyE=;
 b=vvym3etztXXVkCTEQIqmvLL646Wn7PUlNmNteiiX6vD251ott7ib0iMU9IjQnQFeVI
 FygmI1w9w1/01lephMRKe6MOthQRKu5pYu1s0lcDU2/gPbfLXhYeRnp7USSWHbHlWs0B
 rVJ4Nqg/ZxXx10axnj/G1/srp7CmkxfmABm4ln+bf5dkgOS1LfL/BoHPOA8IHWCXAACr
 Biu0lPHJ+c6M9Wxt38SliC9NcBYeJ/587R++nAXrIfAKNyghAmcfIyJvyD2l2JBbr+Og
 IaFcU2fxuS2Vae73zPp70EBnZuF8vg0ydQEve2p8PA53EmtX+Yw5m2d0Sss0vLrODiib
 /Jew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nMOYfNEZkqpOwxdikoGlBP08jiU7JwSsPnMDuh6RRyE=;
 b=EcO5S6JFCHNdsg3tVhmhRmRrZDO2JZkG4tts4FPL0Hq1IZZVzdK4NOPnG7z5C3445B
 Oxx38R9N6ylTynbs78cG94tnzRDDV2ljct0az1hsfJUgVQMLqPNZThvvq2gGeeazszvZ
 1clMOxQj9H5yJQT15wDIVlAE/a7zcgrn7rKKP8Pd/Xao3AlLKwnE3kclEH7c8H7XXGyv
 PQPZSu/P5+xqVl+3P8X6wJN+O70QdFagVivJpOq5MXYhGtBpEj2RumOEDur9fL97ZqYU
 +ZFqjAuhkjDzUnepSq+mdB+oc471yyT7mB1lN3TcVGu/KPv5ZArqT87G5eO9mQvbdWG7
 ShEQ==
X-Gm-Message-State: AOAM530EfzuLW95ZkXHTUyFF3WiRBkQ+/DsovxQ8CNBWQFBYm+u+Kgzy
 0VTNB9DmPTr0d4SVZLO9mY5LhxVTPR8SxIC1rk+x9g==
X-Google-Smtp-Source: ABdhPJzunetbL+zFc/cF/yJgQXxIwApcv4HFPrGl6rmOuOSSwSlKzA8Z3vhz3J17EH6DBzXvxjZbuHqvjb10wXIVlaQ=
X-Received: by 2002:a2e:3517:: with SMTP id z23mr1740322ljz.147.1589536650637; 
 Fri, 15 May 2020 02:57:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200514082428.27864-1-etienne.carriere@linaro.org>
 <20200514142924.GC23401@bogus>
 <CAN5uoS_bimZsFqwaODRRWeCe15JMepQa2z9J0+dq7qNfwxRsug@mail.gmail.com>
 <20200515093424.GC23671@bogus>
In-Reply-To: <20200515093424.GC23671@bogus>
From: Etienne Carriere <etienne.carriere@linaro.org>
Date: Fri, 15 May 2020 11:57:19 +0200
Message-ID: <CAN5uoS9Ar5MZRufsf-x=xjm29VfpYAB2T-L=T-Q+-zPiJoKqQw@mail.gmail.com>
Subject: Re: [PATCH] firmware: arm_scmi: fix SMCCC_RET_NOT_SUPPORTED management
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_025734_223469_420F36B7 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > Or consider part of the SCMI-SMC transport API that output arg a0
> > shall be 0 on success, SMCCC_RET_NOT_SUPPORTED if function ID is not
> > supported and any non-zero value for non-generic **error** codes.
> >
>
> I prefer that. Anyways I will check and if anything changes I will ping
> back on this thread.

I don't have a strong opinion on whether considering or not 0 as
success, for whatever the function ID used here for SCMI message
notification.
We can assume at least 0 is default returned in a0 when the function
ID is used in SCMI SMC transport.
Thanks for the feedback.

> --
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
