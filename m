Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B7814BE21
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 17:55:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ulv7RVQG8NqzY7z54TxRNoiVj/eP+o0q1hDkF/NAQrA=; b=UZ8TP7W2UEjrRO
	Ilqwx+XhmKeCWtDIF91UX5MAkzAQF7PvOzk0/S+BJqL7DwAOpyyE/c5ofyZ3qhG6zF5X5NK51OkaG
	J/4Y0sJOgXgN21YhnGq/QT84K5RKNBy70EUANdfpWo0WSgJwAp1A9mqoNzsm3gV/X/H+peYrNbkky
	EswZrIf9ysWYmGJyRAKFpBWJql9VmApzd5INi9Xap5L7F+ScvBUNtCNFoNYos7A6cgoTsfZU5pdCc
	m/T+73S9SZBwvRnsq11DVuCu2Up3dRx6uH1/B4XlxydZVNs6Tj43rsh9yGL41P9jT5J+GvYwNqXTg
	HBfobjiak/Vd30uPxPWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwU9X-0005FB-OA; Tue, 28 Jan 2020 16:55:51 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwU9N-0005EG-Si
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 16:55:43 +0000
Received: by mail-wm1-x341.google.com with SMTP id s144so2213052wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Jan 2020 08:55:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WCgG7MXtK+EadBs68VzLrnD51numFaQTp+Nf00N2Sac=;
 b=RT/MqUsrLMJMTlJLSdTpe5SrIjHzDcNYhB65LuMHGbpgW5xF3y/8DJJMuX45zauCMJ
 bM4sR7Worug+qMce3gtMcCYUWgxbClKOQNWiQPAQD8SgC1ivfBPxlAs2B++TNobJj0/m
 gI94unUUlyNwlsqDUGu6BNMo9IJKNtNnVzlqk/tSVzd51Z8Zy+8+tL0ogx4j62PoOAuB
 DJ25cWKO28c0OySBXqWSrlR/FqnbTh9ZLgGEsT5y4cZ3ovoBblD0M7+F47Sw9IjyL0FU
 o1vQr3BqT8TFEHapR1Qrsd4sU/TAI0wzV/dD5XbgUsxGoAwV94g2ovrA78elVdZmGQvZ
 rmVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WCgG7MXtK+EadBs68VzLrnD51numFaQTp+Nf00N2Sac=;
 b=ZdQ2UMCZd0CWNs9xktXk01bi2rrx7SKAhdXciAWozGg+iD2qP2Y3mcfG6Qdh9kkshN
 OnoKngPz4n5tP7jmbfbSrDRlfB85TZGtUy4ZkPoK7j9Dfhcn6xjrcORhPuppq7kPNMaf
 KIU3rfxth313jD/l6kCcmsK37cVjn9AjUhJxyu/wluvHolYj33SuGgw/jSKaVtMILLAD
 tg8FuZZGHZl2kAkmrD/VyEfO/riSc9KBo8qSRE7zEYguYGNsjrNTWF0EmJk2c0kxfG7K
 ge2lS3xMN/DzMJlFDp399zW2H1tuaWy+iuThjwixrrFiMQQt9+GGam2yAltwSyMyMIcT
 8qww==
X-Gm-Message-State: APjAAAVrlk5n3hQGZLYX1ljgfOq8Z8gsnGTRwQSjW/foDMwEoITz9Xd4
 dcryKIM5pzYSUZtvNN6YY1M=
X-Google-Smtp-Source: APXvYqxOIb8IvrpKKK65gJyI7ywFbGmllhSO+jZl55f0JV88LAgtEGsIIYILGXAMELx+9KCRr/8Ysw==
X-Received: by 2002:a05:600c:2c08:: with SMTP id
 q8mr6221103wmg.45.1580230537494; 
 Tue, 28 Jan 2020 08:55:37 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id 16sm3745279wmi.0.2020.01.28.08.55.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jan 2020 08:55:36 -0800 (PST)
Date: Tue, 28 Jan 2020 17:55:34 +0100
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Horia Geanta <horia.geanta@nxp.com>
Subject: Re: [PATCH 1/9] crypto: engine: workqueue can only be processed one
 by one
Message-ID: <20200128165534.GA11610@Red>
References: <20200122104528.30084-1-clabbe.montjoie@gmail.com>
 <20200122104528.30084-2-clabbe.montjoie@gmail.com>
 <VI1PR0402MB3485B787EA6BCDD5A5600BAA980A0@VI1PR0402MB3485.eurprd04.prod.outlook.com>
 <20200128155800.GB17295@Red>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200128155800.GB17295@Red>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_085541_952275_9FF760A6 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

On Tue, Jan 28, 2020 at 04:58:00PM +0100, Corentin Labbe wrote:
> On Tue, Jan 28, 2020 at 03:50:14PM +0000, Horia Geanta wrote:
> > On 1/22/2020 12:46 PM, Corentin Labbe wrote:
> > > Some bykeshedding are unnecessary since a workqueue can only be executed
> > > one by one.
> > > This behaviour is documented in:
> > > - kernel/kthread.c: comment of kthread_worker_fn()
> > > - Documentation/core-api/workqueue.rst: the functions associated with the work items one after the other
> > [...]
> > > @@ -73,16 +73,6 @@ static void crypto_pump_requests(struct crypto_engine *engine,
> > >  
> > >  	spin_lock_irqsave(&engine->queue_lock, flags);
> > >  
> > > -	/* Make sure we are not already running a request */
> > > -	if (engine->cur_req)
> > > -		goto out;
> > > -
> > This check is here for a good reason, namely because crypto engine
> > cannot currently handle multiple crypto requests being in "flight"
> > in parallel.
> > 
> > More exactly, if this check is removed the following sequence could occur:
> > crypto_pump_work() -> crypto_pump_requests() -> .do_one_request(areq1)
> > crypto_pump_work() -> crypto_pump_requests() -> .do_one_request(areq2)
> > crypto_finalize_request(areq1)
> > crypto_finalize_request(areq2)
> > 
> 
> As explained in the commitlog, crypto_pump_work() cannot be ran twice.
> 

Sorry, I have misunderstood and wrongly answered.

Right since some driver does not block on do_one_request(), crypto_pump_work() can be ran one after one and so launch two request.

So this patch is bad.

Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
