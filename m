Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2801DAE0A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 10:53:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+6+R6yynr/Ez7140+hqJafpEWXWF8uikRmFd/0CVWmc=; b=WlrG/RTNntmOWy
	DwDS5cNbQe3CeIVEjqTrU27ayFAj+Bo/m7J5nCStF0N4x8fAXmrSTEZlhPddJVrC05lQoanvsuN6a
	VIKTqr+yva7LXjwWjfU6HwnZ+XQflRujJUo8qnZ5xsOvumzCH5L3jCv6yCzEbjTLE4N4Ezya/C4mT
	gQakzgNZFzPBSvHlseoFj9eFxNsCD1GoQuufiPEgrP2xpZtJSjU/IrRlMd7N6Tx/H/ux2CtQfY7QP
	8XydJMsKSgkHBdtjoBfHosC1gjfeRnv4r2brdnnLAMizxtVrni7d7W72STK5+X3035uPoKzNV1BNI
	zT7g+iT/PFvHD3wrCDwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbKTz-0003yz-8Y; Wed, 20 May 2020 08:53:47 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbKTq-0003yT-HK
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 08:53:39 +0000
Received: by mail-ej1-x634.google.com with SMTP id s3so2648655eji.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 01:53:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TtwV3QrQiPIMfOrVeCUCDc4kF50CnsWkK4WzBNSX5ow=;
 b=V/fmMrRwObbieIiQy6ra4hhj1I6GvBXCMYzfeltwa6odazJIvpOFoDZWMevPkLqBvC
 TtXUHpUx5TZ0GyKbb8AUjIg1/0vtwFEKkWskzFmQjGxmFXS9XYDQgsVKPdkm+tWAZmNN
 ryr/oMikrB8imBpfA7mukTMuEv5gG9JEtmxiLjBJma4SPPjos6U4CdwXMsRBRC8h6LP8
 K9PFzMOle/WYeMowtSQhYK+E/ceUlsIUM9Qtd9cRYD+Jw80qTGY+MNezXaeluTVTlEeN
 h81PYw7hWX+uJq4B7rPbWw0HiOzJSWgQOKghVFjneCwstk4lwGxd+vAy+TaVCfnanCc1
 lcUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TtwV3QrQiPIMfOrVeCUCDc4kF50CnsWkK4WzBNSX5ow=;
 b=TmehKUjDpzRN6F6NNfGo670qmlFLK9A99MS3xiRUmGMphVceV2ffpexvtEm/5XYn2Y
 iDSvWSQsRQylUjkHzhJ4PZgzvIsONtG2OkkYKxpO4r/9Zilv0OmJvkGCddJU7AeL5woL
 enQf/boKsip4GHpnWq0lhbxLSjzToKO3gp2e6BAFklQPFU9anoC9GEyPgFKTvq8uuxuj
 7EJeFVMcE7MivK4ERjsn3AL3+fDXHcebHrL47Iueg/Q6IpqumZjlzIxOjJVArsaO6J2K
 HVvr/C3iESG7qQcsIMXxqYdYkFqGViLfpWBmbPrYZkQZ2iGLzFvfNyV19vxkzJukBDiR
 3LPA==
X-Gm-Message-State: AOAM531Q19N8ybg3Kyj5Tfzt2rO3dsO2bLdGXCCbpO9WKoOQSzvHjqOP
 9nI2jSmE0ijrZoCV71hTyLC0fO3v/cXSj38sxMI=
X-Google-Smtp-Source: ABdhPJyYeP0xcfYvplU9j7dTkAp6UH1QVs6n4Z57XXdRrFvbWwa7Pw5cxa5XGhSSxEYy2ktunjWxb1WuH4bKDzPLVrg=
X-Received: by 2002:a17:906:7c59:: with SMTP id
 g25mr2974027ejp.393.1589964817052; 
 Wed, 20 May 2020 01:53:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAAHhmWiezrmtChuowQ4gyn8qhSUnfjc574P_riqHzTqifZK=dg@mail.gmail.com>
 <20200520082856.GA24293@willie-the-truck>
In-Reply-To: <20200520082856.GA24293@willie-the-truck>
From: Linu Cherian <linuc.decode@gmail.com>
Date: Wed, 20 May 2020 14:23:25 +0530
Message-ID: <CAAHhmWhum+s5OopKMcNOqvGN5aYek-BJRseN8wS47LiH+hJcKg@mail.gmail.com>
Subject: Re: Clarification on necessary barriers before generating IPI
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_015338_574883_16E52C82 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:634 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linuc.decode[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: maz@kernel.org, Linu Cherian <lcherian@marvell.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On Wed, May 20, 2020 at 1:59 PM Will Deacon <will@kernel.org> wrote:
>
> On Wed, May 20, 2020 at 01:38:24PM +0530, Linu Cherian wrote:
> > How is it ensured that system register write using msr instruction(gic_send_sgi)
> > doesnt get reordered before the stores to IPI call processing
> > list(call_single_queue in kernel/smp.c), so that IPI is guaranteed to
> > be generated after the stores get completed.
>
> I think the flow is:
>
>         <store to memory>
>         DSB     ST

Dont we need an extra ISB here to ensure that the subsequent MSR SGI1R doesnt
get executed before <store to memory> and DSB ST ?

This is on the assumption that DSB ST doesnt enforce the ordering of MSR SGI1R.


>         MSR     SGI1R
>         ISB
>
> and then on the receiver:
>
>         <interrupt; implicit ISB/context sync>
>         MRS     IAR
>         DSB     SY
>         <control dependency>
>         MSR     EOIR
>         ISB
>         <handle IPI>
>
> > CMIIW, Dont we need an isb() in addition to to the wmb() in the below code ?
>
> There is an isb?() in the code, after the loop. Are you saying it should be
> somewhere else? If so, why?

Please see above.

>
> Will

Thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
