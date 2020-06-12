Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C84E91F7378
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 07:29:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=80Am8lVal1csCafTzkyO1IcKSf6tcROffSC869QaIrw=; b=gzhjHY2NIlGXVh
	npa2QrcBHyoMZ1m0V34xMxSGxUNL9V6jBqYk1lP8um1E0Piryr1icYrjCMcKV+Z83l9ccK9n02CcG
	IDE8b1ZJvwhu5AHYvc77NGd2nVnClSW3npyUd61MNIQLXcftGOUvC0qtj9gJPkWG0anaD9CwcQ2Zu
	whG8r/g6DKwIXEtJwMzZ8QHaM5hKggFxxff31LLy5KsKOWaaETva7G1aOJZx4zVJVissvbXjqDhvJ
	BMZ/jkMOfSGxYidNWgX/vr2wTCaTpG5MEFnhp2aqbE9POPdLja5b9qkELskRKvL3d3zUWUK2u0H6r
	Ff2IkvcMZqQz8n1yyccg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjcFY-0003YU-Pl; Fri, 12 Jun 2020 05:29:08 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjcFP-0003Xw-Uz
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 05:29:01 +0000
Received: by mail-pg1-x536.google.com with SMTP id l63so1364246pge.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 22:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=sn8Q2QTIJp4z3aJYpXX1ZHPFtT0KGOrsa14hJOj2CZ4=;
 b=dk3ugeAESJZcB7Ib32BwlQGgfx9iTvtwl1PuBEikxgRo0Lc4TtKRi/8Xi2tYQC/z6Q
 KM/rkoZDO2B3Vv+BV/qKKsEdHASexOfVLUWpEpXby0ddy7vegM42ltm/7YlidZkGXL0j
 T72ZH63bHrOfLmKNiPoWWBfGFumnggDr1CGNgMOw92+0KZvZTNSskiMm82+LjGyUoY5R
 2/5dD1b/x0KUfQAS8eAkSu8+/oXb59fy+4zMwQlmbYNTcjQVB9ubXOT0ReEB+k8zt21C
 D/uS7AKn5xQhG7c6hZ7A8gAN1oMOwXNexQuDSoEovnBE0nrC/yM44wL5x2lLAdlrUFfN
 mjvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sn8Q2QTIJp4z3aJYpXX1ZHPFtT0KGOrsa14hJOj2CZ4=;
 b=cUJG/XWp7swBqSpe80U5Tb88jvmGeOBGURb4J5+xXV2JUSEQ5YJ7SgFcX63y8RMXfC
 T85+jZjY1Kf8GzORcoAaP1iW1GnUjhYP8acjwFZxaaUx2+S5i0Lbxz4E7Anz4rvCPO6F
 3ggIXDDiV8dLOY2TQDPr9zCUqGSmO3zrA2L0mZa1RsAnc/Gns/u/MZLg0DM3d9uvNFmZ
 CV4gYHu1PbunZpWchszk4ay6Wd3lEoMer8OVITS5IKZeG/XusEwfg/tA95FDLXqECQZA
 VxpSctmSAmyYSjJaiyE0WytitElODE6JKDGPgYKdguZKXZ8iu9CWnf0yo7ACjEn1Pvfk
 TsOg==
X-Gm-Message-State: AOAM530P12q9pLgH30MNOKJ3atiWjcPZoklXeijb0wp2mQd5cJk3O9us
 z2AHfCFCGa7R9tfVeSo0CrpKQg==
X-Google-Smtp-Source: ABdhPJyHqEKil6Mou/zBNdyhF9uHnkjkpxj+ljkhROJsCnXD4KjAtn8p08f6zo/SXq+4izoXTulfCw==
X-Received: by 2002:a62:e40f:: with SMTP id r15mr10236310pfh.247.1591939738558; 
 Thu, 11 Jun 2020 22:28:58 -0700 (PDT)
Received: from localhost ([122.172.62.209])
 by smtp.gmail.com with ESMTPSA id u14sm5369429pfk.211.2020.06.11.22.28.57
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jun 2020 22:28:57 -0700 (PDT)
Date: Fri, 12 Jun 2020 10:58:53 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: Re: [RFC] dt-bindings: mailbox: add doorbell support to ARM MHU
Message-ID: <20200612052853.nds4iycie6ldjnnr@vireshk-i7>
References: <CABb+yY0cW1GZHVmwEr19JRdJTmsAxw9uq83QV_aq-tdPJO5_Fg@mail.gmail.com>
 <20200604092052.GD8814@bogus>
 <CABb+yY27Ngb0C-onkU2qyt=uKgG4iVrcv8hGkC+anypQbTRA1w@mail.gmail.com>
 <20200605045645.GD12397@bogus>
 <CABb+yY2YZ99NjHYNi0=KLGFDsVUeJmqiJD3E25Chwk-THJV4iw@mail.gmail.com>
 <20200605085830.GA32372@bogus>
 <CABb+yY2TR7tuMx6u8yah6mO2GwZ5SWYOO80EQRL-i=ybgn=Wog@mail.gmail.com>
 <20200610093334.yznxl2esv5ht27ns@vireshk-i7>
 <20200611100027.GB18781@bogus>
 <CABb+yY1OwVB+uk+0w+D-4Xy46iYn8tPZYBZ0qjrzQFLA6SaTvw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABb+yY1OwVB+uk+0w+D-4Xy46iYn8tPZYBZ0qjrzQFLA6SaTvw@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_222900_030879_91E99735 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:536 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Devicetree List <devicetree@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11-06-20, 19:34, Jassi Brar wrote:
> In the first post in this thread, Viresh lamented that mailbox
> introduces "a few ms" delay in the scheduler path.
> Your own tests show that is certainly not the case -- average is the
> same as proposed virtual channels 50-100us, the best case is 3us vs
> 53us for virtual channels.

Hmmm, I am not sure where is the confusion here Jassi. There are two
things which are very very different from each other.

- Time taken by the mailbox framework (and remote for acknowledging
  it) for completion of a single request, this can be 3us to 100s of
  us. This is clear for everyone. THIS IS NOT THE PROBLEM.

- Delay introduced by few of such requests on the last one, i.e. 5
  normal requests followed by an important one (like DVFS), the last
  one needs to wait for the first 5 to finish first. THIS IS THE
  PROBLEM.

Just increasing the timeout isn't going to solve anything as I said in
the last email, we can make it 5 minutes for what's its worth. The
idea is to make the turn-around-time less for all the requests..

From Google (I know you must already know it, I am just trying to
highlight the importance of this thing here):

Turnaround time (TAT) is the time interval from the time of submission
of a process (read request) to the time of the completion of the
process.

This is what people care about, that is the whole reason kernel has
multi-processing support in the first place. If making things
sequential was good enough, we would have never reached here. The
whole idea is to parallelize things as much as possible without
hurting efficiency in a bad way (like too much parallelism). The
hardware allows parallelism and there is absolutely no point in not
allowing that. The kernel doesn't need to worry about how the remote
is going to handle it. Remote may be simple and handle it sequentially
or it may be running Linux itself and can schedule multiple threads
for requests.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
