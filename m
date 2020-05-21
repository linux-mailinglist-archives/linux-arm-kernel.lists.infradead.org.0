Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C823F1DD71F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 21:23:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2JP9d4VUygG9OeNR3wh6AFcN1mkBfsCh0cGG4BSnJBM=; b=Q43oG+dc+VwXej
	pF4qzN5mjjRTX17WQqFzwJ2pMUvi6u5wTBQdShCH5z12SzONdELsa3YbO+Qp4iA5+RUdgR7AUJH3S
	JjXhG8sPR0P+/y99UOezYFpG7nfiLrLu7kSOHswSAR5465pSaXZKaMW6l4FsfO0Xl1qsmmNM0ZCrF
	GUwns0zyE4K3LcMrrk6z+luQfR4xevBMKNDsIGCeQVt4UP7nE/jh4sgUD/F+ARivXE6BIw8ZAgRe1
	g7v/f6bZ55Y4HnVUYxhMNpky1IqWfxY29tPHsXLT1/Q6lNnDzVS4eWMwvy/PB2h6JsZIQvSTaLLk6
	PNDkPY8f7TZiNab5pHxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbqmh-0006T9-QW; Thu, 21 May 2020 19:23:15 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbqmX-0006SE-UE
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 19:23:07 +0000
Received: by mail-pf1-x443.google.com with SMTP id 23so3832555pfy.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 12:23:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Y63aS+NaGtpwqRet4e2k+offwk7YhLSwL57svUyiQxU=;
 b=WMQxmoMkXiaxv0IrSbei9pAXdBwNmZcH/MmXSAHk0JQ+WNZrIH7HEba2ekgrpCCNnV
 8G3X4p37vonBB3EjlGHPRR1rRLrqgq67toMztCXcGaThOLwaKDYZF8+T4+R47eCxXfbb
 eDB8FIjJSw+ufhgTj5wvOWtqxyYv1gwgjN7ro+v86hkhNsDQUN4nHQ/rX5qWwlwXgBfb
 cR2Yy2xsInkhcgL5wSXNmSSvdKTqi6F8NLyrsED6Kb/owzBsMrzxnJmP5P12YaTL3RAL
 VVNmVk90RZ2svNNtUqrks2k9+f2I4DU0q1KXL+zdLQlrJAfRem72f2ZaGT/M7KVwEc8N
 DHog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Y63aS+NaGtpwqRet4e2k+offwk7YhLSwL57svUyiQxU=;
 b=WqPuPk7F76fT2xa0RmYrS9xm1yHVVuY0eLqnK5ngZoi1SOwIqiqrTHfqOD6GPSOFUa
 nChuGgZ3XWOZNPz24FNCQrI7OnQA+j8M/JNZuPmEd0hsZRrI9Ed/CkRWjZIhRtuFXYFp
 aH7jHQhZQMXnftcN6cJ7EVht8lborJ0s1XTmZVjHHjNGrcLkBKSZ/bKjqLZlF9X479ax
 FFnxJfry6kyopUoR5mB9y+PS+0HXZlnkNeq0BDkNPp0JICk5KyX2kckpnR9/YenYyU+h
 Fvtp0BLw0VNSjWPIOh1pcRQ52yLGIc01oY3DVVQ0vS3+jWdUw3GDSKst87PJnZ+MGrAS
 6g6Q==
X-Gm-Message-State: AOAM531dQVh9LmqQwPprsGflMwIFU+X0pMOtDi0Tv4DNBsHC6pBWJ1k9
 +R0LQJUxaVIcXVrELkhjTvyeTA==
X-Google-Smtp-Source: ABdhPJzU9w9G5TLd0sTBUx6ZZiZCtV51V0ECeg4y2odgj10sq90602L1zxAVvLWHKXJp6BCaPA09ng==
X-Received: by 2002:a05:6a00:1342:: with SMTP id
 k2mr272459pfu.32.1590088985204; 
 Thu, 21 May 2020 12:23:05 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id m14sm4648350pgt.6.2020.05.21.12.23.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 12:23:04 -0700 (PDT)
Date: Thu, 21 May 2020 12:21:46 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH 2/4] remoteproc: introduce version element into resource
 type field
Message-ID: <20200521192146.GO408178@builder.lan>
References: <20200325204701.16862-1-s-anna@ti.com>
 <20200325204701.16862-3-s-anna@ti.com>
 <20200521175421.GI408178@builder.lan>
 <b338480e-c586-f988-f5b6-784551b7beb6@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b338480e-c586-f988-f5b6-784551b7beb6@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_122305_973192_DA761926 
X-CRM114-Status: GOOD (  18.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Loic Pallardy <loic.pallardy@st.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 linux-remoteproc@vger.kernel.org, Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 linux-kernel@vger.kernel.org, Clement Leger <cleger@kalray.eu>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 21 May 12:06 PDT 2020, Suman Anna wrote:

> Hi Bjorn,
> 
> On 5/21/20 12:54 PM, Bjorn Andersson wrote:
> > On Wed 25 Mar 13:46 PDT 2020, Suman Anna wrote:
> > 
> > > The current remoteproc core has supported only 32-bit remote
> > > processors and as such some of the current resource structures
> > > may not scale well for 64-bit remote processors, and would
> > > require new versions of resource types. Each resource is currently
> > > identified by a 32-bit type field. Introduce the concept of version
> > > for these resource types by overloading this 32-bit type field
> > > into two 16-bit version and type fields with the existing resources
> > > behaving as version 0 thereby providing backward compatibility.
> > > 
> > > The version field is passed as an additional argument to each of
> > > the handler functions, and all the existing handlers are updated
> > > accordingly. Each specific handler will be updated on a need basis
> > > when a new version of the resource type is added.
> > > 
> > 
> > I really would prefer that we add additional types for the new
> > structures, neither side will be compatible with new versions without
> > enhancements to their respective implementations anyways.
> 
> OK.
> 
> > 
> > > An alternate way would be to introduce the new types as completely
> > > new resource types which would require additional customization of
> > > the resource handlers based on the 32-bit or 64-bit mode of a remote
> > > processor, and introduction of an additional mode flag to the rproc
> > > structure.
> > > 
> > 
> > What would this "mode" indicate? If it's version 0 or 1?
> 
> No, for indicating if the remoteproc is 32-bit or 64-bit and adjust the
> loading handlers if the resource types need to be segregated accordingly.
> 

Sorry, I think I'm misunderstanding something. Wouldn't your 64-bit
remote processor need different firmware from your 32-bit processor
anyways, if you want to support the wider resource? And you would pack
your firmware with the appropriate resource types?


Afaict the bit width of your remote processor, busses or memory is
unrelated to the choice of number of bits used to express things in the
resource table.

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
