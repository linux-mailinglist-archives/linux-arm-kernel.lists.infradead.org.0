Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA09514BD5C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 16:58:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gTUvU19WFZ3WNufeGSFDUhWLYv1L11Uy3HAEqSp8U/Q=; b=haTY9RHINLYmF/
	cVIu+h6tuOx6tdos7OeViyhU+lJhIYjPRTbXFvbEy1p3Db5+CRkGZM22pIliIlMp+l1Ui5+m4XSvf
	+bkDvqo25ZY/prZvF7+IpyQEO3rEol84Tk7lZTj42sFlzdbEys2UtufSY5TNJJJybt7Y8VrRa/Xdq
	FGzZpvk02qxBgz20g9EXmaXgA9f9HLe1cP1ZoJ02jrmXzoRRyidTqLsIzz2gmqeXpCiQu0BRZuIzM
	WDMwHGzcA9ZF6WD3H/9t/S9C2jMH0ULehl/Hl4FYBCqKWG6oobPdCM/xH5vtF9x1SuDWr99j+i8FG
	PSdrb6WfUCnQ1twFm4rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwTFm-0006BB-Ob; Tue, 28 Jan 2020 15:58:14 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwTFc-0006Al-IB
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 15:58:05 +0000
Received: by mail-wr1-x442.google.com with SMTP id y17so16618541wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Jan 2020 07:58:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=FWPp9fyEDHyhawe1t49VObba7gl1SqL8FrQT/ryGVAI=;
 b=q/wO+PfO+FJAbmdRbe5TTat4LCNumuP61pWivJVRm4UlO1Pt0jyE78fSz472H6vaIp
 vZpw3Jd0LJoMKK725DxMrorGozM8U96NJjgdnd0eUGu3ljsSvzkYdA3Cn/+MqU3/sAm2
 NhPmiQ9I95+MPKFKtvtUTAoJBDSb5R8vgatIF/i/GVHV1+31qX8jfvOEWGcwX3tkqQxt
 LihRqy6Pa5vsqcpLbvDpfbjloAxEPKem41hE3tGf3+zb8NghFfBRz0+s2EHga/CfqVDO
 E1QishhiZp9Cn34ts67GZES4qZ4ncyIIEspmxfvb34wyMvXAYn8hsghiUL8NHQ6Y5BDj
 X4Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FWPp9fyEDHyhawe1t49VObba7gl1SqL8FrQT/ryGVAI=;
 b=XsmbHRB4gHWRgig60R/ZONgwnW4QeggfoFiYlrqpEq7/qvz9ueSmr9YzSECgwrJB5q
 sp3tp2J3WwDrUAsVJ3C6Gjhs5DfbzaSKwjyMTDdIeJHHPHwYXUg6cMOoaFeae7ei/QUz
 0cZcaSe5o4vJQuj7YCpR/JNYOXo9EVPZ4DeLO0ELaZ+CNo83PWF8Qr8n+GipE61qTcrN
 K+eUBHCDK2VMECvRs+cZ+QNAaZc/mZGlPqII1LECZRuhDJw5tbj24fWCZ5aDBw2+wIkd
 s2mitFKqJfo7vdTj65XIkZazJZ+La7Y+YVuQ4NCkecJuoz/9p3ONPX4dax74/QU7GKVm
 JwUQ==
X-Gm-Message-State: APjAAAVrqexvFluzVdM7S63HSCfTCaobLjQU2fmEeGAF9IQllKLT+TFM
 RWt57vaZZ79WRMjTAcNVdu4=
X-Google-Smtp-Source: APXvYqzAo+vH+VwcOVJsIvK6o+ainqPBvzuhLyEHXWg4iWVQoesQZk1f9TDSxMN1ghStxMRWhTiHzQ==
X-Received: by 2002:a5d:6151:: with SMTP id y17mr28941387wrt.110.1580227083068; 
 Tue, 28 Jan 2020 07:58:03 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id i8sm26328713wro.47.2020.01.28.07.58.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jan 2020 07:58:02 -0800 (PST)
Date: Tue, 28 Jan 2020 16:58:00 +0100
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Horia Geanta <horia.geanta@nxp.com>
Subject: Re: [PATCH 1/9] crypto: engine: workqueue can only be processed one
 by one
Message-ID: <20200128155800.GB17295@Red>
References: <20200122104528.30084-1-clabbe.montjoie@gmail.com>
 <20200122104528.30084-2-clabbe.montjoie@gmail.com>
 <VI1PR0402MB3485B787EA6BCDD5A5600BAA980A0@VI1PR0402MB3485.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR0402MB3485B787EA6BCDD5A5600BAA980A0@VI1PR0402MB3485.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_075804_602136_E86B9BDE 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [clabbe.montjoie[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "herbert@gondor.apana.org.au" <herbert@gondor.apana.org.au>,
 Iuliana Prodan <iuliana.prodan@nxp.com>,
 "linux-sunxi@googlegroups.com" <linux-sunxi@googlegroups.com>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "wens@csie.org" <wens@csie.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 28, 2020 at 03:50:14PM +0000, Horia Geanta wrote:
> On 1/22/2020 12:46 PM, Corentin Labbe wrote:
> > Some bykeshedding are unnecessary since a workqueue can only be executed
> > one by one.
> > This behaviour is documented in:
> > - kernel/kthread.c: comment of kthread_worker_fn()
> > - Documentation/core-api/workqueue.rst: the functions associated with the work items one after the other
> [...]
> > @@ -73,16 +73,6 @@ static void crypto_pump_requests(struct crypto_engine *engine,
> >  
> >  	spin_lock_irqsave(&engine->queue_lock, flags);
> >  
> > -	/* Make sure we are not already running a request */
> > -	if (engine->cur_req)
> > -		goto out;
> > -
> This check is here for a good reason, namely because crypto engine
> cannot currently handle multiple crypto requests being in "flight"
> in parallel.
> 
> More exactly, if this check is removed the following sequence could occur:
> crypto_pump_work() -> crypto_pump_requests() -> .do_one_request(areq1)
> crypto_pump_work() -> crypto_pump_requests() -> .do_one_request(areq2)
> crypto_finalize_request(areq1)
> crypto_finalize_request(areq2)
> 

As explained in the commitlog, crypto_pump_work() cannot be ran twice.

Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
