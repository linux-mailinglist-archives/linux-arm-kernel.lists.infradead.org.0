Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 077781DD780
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 21:43:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T3qdo/dBf3PgUqGJ3oCoUs6iZ9SlN9mdfNe2RMxJ6Ac=; b=nUw5dqct+nZXLW
	zNCW04ltft0pxWd/DAvRIbgy2LuUd3r/eOPQ1EQs5WhzQn6n2r1eZA+sZYZG5m7PGjN+XQU1Ot+I6
	U6v8EqDT0GQrzoHbbEELMb63AO7RgujcLpj7fI8MtuMEekxbnHsAPSaOFkWMBd5ozv9fs2PfAj5Dt
	mJf2zonxjpJm/rz7M1/HBUxyaOT+X3oUtWAgwUVTlPGpVVehvvZGXT+Y0aqiT7RV6j6v96AKBRQ7D
	Gkn6Iw2mprsBvvtjyHuTMEA9BP3HqEXAIZd7Jr8QtM+pow4k2dojqgtRCCMfFMgjkioqJSrSXtiC9
	yp204AIE8wwgwwGQcEXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbr5m-0002yD-Q3; Thu, 21 May 2020 19:42:58 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbr5Q-0002uf-1X
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 19:42:39 +0000
Received: by mail-pl1-x641.google.com with SMTP id t16so3299962plo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 12:42:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=BXYPauGkNWtPwKYwGGvUTVu/KGcI14RapTxg+fHwXY4=;
 b=se3vu6erp2PBFC3GeiZK3pujHsPbv1+Tub7hi+r+f1Cu3Y6qod1+7C7rJZAl2ylOrO
 xe7x3AdAvBRwQZ+ViBf3KRKqKxm5/pfNZdBUCB+/cZixrse5Nrq3v5eAScYCzQNG0wzd
 bXws+6xkLfsjR+OPSM1Tezns0jGTj/TOo5PXDTpWjhjk72I2AHEzDy4zLLAQRg0+QW+d
 mWWYanxQ9LMvTj1CgdOsvNvsfhKpKSWJR4cuW1nWvYDuqsA5AQAaaRqI3ucSL53IB6V+
 x3ZOhZYpuxq0n4GGBJrYgVWsiorHx0X17eXWKyYOZtnXT4u7BGIxnD5cbxsAHeNBchtF
 OXqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=BXYPauGkNWtPwKYwGGvUTVu/KGcI14RapTxg+fHwXY4=;
 b=RbfmlXTfrmozLyFZo0FvvZ8csqWa0u7aUbQfM5/Mu2WL8ttdbLU8w9qQqtxps2i8ba
 tPZ5fIJQYfpwnj2XrfS0qj/BxwhCBI2wJMQe5GzCI8Al0YHGFPizP9VME65cdpr2to3v
 eU+GttHgNgrkm0wM+m5I6BkEu5/ufX/BRhBraHuMv5huWTg+Qqn18GY8x3u4Hvh0CAzm
 ZcmYjq5/G/0PQ1cSxbQA8aeacn69vAKYj/kWITSyTRkjnB4pcxzW1j+pPpqkCDeda9u9
 j3XWa92xJ0Om/QOJAteBx8aTET47qgBe/87d7aXUQZVni1T4TJV+w1m/dI0wwnNP8QFa
 53ug==
X-Gm-Message-State: AOAM531T+bcWQnLLq5RdQPIzYzkCrIdG5qigAadtPm9NUnCv59Lt17SF
 9SDrx+phn0DxSUGrSwCX7EGBgg==
X-Google-Smtp-Source: ABdhPJxk6/AaRmSF7oCKZdzRq5JtighkgWW5LdhwQ4PD4zRb+L/JtxeyuIelMKGLsyYWPBn0ErhdvA==
X-Received: by 2002:a17:90a:248a:: with SMTP id
 i10mr157777pje.174.1590090155010; 
 Thu, 21 May 2020 12:42:35 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id n21sm5065359pjo.25.2020.05.21.12.42.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 12:42:34 -0700 (PDT)
Date: Thu, 21 May 2020 12:41:16 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH 2/4] remoteproc: introduce version element into resource
 type field
Message-ID: <20200521194116.GP408178@builder.lan>
References: <20200325204701.16862-1-s-anna@ti.com>
 <20200325204701.16862-3-s-anna@ti.com>
 <20200521175421.GI408178@builder.lan>
 <b338480e-c586-f988-f5b6-784551b7beb6@ti.com>
 <20200521192146.GO408178@builder.lan>
 <57ae5678-fd0a-07a8-6165-a2cf7ccdef88@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <57ae5678-fd0a-07a8-6165-a2cf7ccdef88@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_124236_180125_F458AFDF 
X-CRM114-Status: GOOD (  23.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

On Thu 21 May 12:29 PDT 2020, Suman Anna wrote:

> On 5/21/20 2:21 PM, Bjorn Andersson wrote:
> > On Thu 21 May 12:06 PDT 2020, Suman Anna wrote:
> > 
> > > Hi Bjorn,
> > > 
> > > On 5/21/20 12:54 PM, Bjorn Andersson wrote:
> > > > On Wed 25 Mar 13:46 PDT 2020, Suman Anna wrote:
> > > > 
> > > > > The current remoteproc core has supported only 32-bit remote
> > > > > processors and as such some of the current resource structures
> > > > > may not scale well for 64-bit remote processors, and would
> > > > > require new versions of resource types. Each resource is currently
> > > > > identified by a 32-bit type field. Introduce the concept of version
> > > > > for these resource types by overloading this 32-bit type field
> > > > > into two 16-bit version and type fields with the existing resources
> > > > > behaving as version 0 thereby providing backward compatibility.
> > > > > 
> > > > > The version field is passed as an additional argument to each of
> > > > > the handler functions, and all the existing handlers are updated
> > > > > accordingly. Each specific handler will be updated on a need basis
> > > > > when a new version of the resource type is added.
> > > > > 
> > > > 
> > > > I really would prefer that we add additional types for the new
> > > > structures, neither side will be compatible with new versions without
> > > > enhancements to their respective implementations anyways.
> > > 
> > > OK.
> > > 
> > > > 
> > > > > An alternate way would be to introduce the new types as completely
> > > > > new resource types which would require additional customization of
> > > > > the resource handlers based on the 32-bit or 64-bit mode of a remote
> > > > > processor, and introduction of an additional mode flag to the rproc
> > > > > structure.
> > > > > 
> > > > 
> > > > What would this "mode" indicate? If it's version 0 or 1?
> > > 
> > > No, for indicating if the remoteproc is 32-bit or 64-bit and adjust the
> > > loading handlers if the resource types need to be segregated accordingly.
> > > 
> > 
> > Sorry, I think I'm misunderstanding something. Wouldn't your 64-bit
> > remote processor need different firmware from your 32-bit processor
> > anyways, if you want to support the wider resource? And you would pack
> > your firmware with the appropriate resource types?
> 
> Yes, that's correct.
> 
> > 
> > Afaict the bit width of your remote processor, busses or memory is
> > unrelated to the choice of number of bits used to express things in the
> > resource table.
> 
> I would have to add the new resource type to the loading_handlers right, so
> it is a question of whether we want to impose any restrictions in remoteproc
> core or not from supporting a certain resource type (eg: I don't expect
> RSC_TRACE entries on 64-bit processors).
> 

Right, but either you add support for new resource types to the
loading_handlers, or you add the version checks within each handler,
either way you will have to do some work to be compatible with new
versions.

Regarding what resources would be fit for a 64-bit processor probably
relates to many things, in particular the question of what we actually
mean when we say that a coprocessor is 64-bit. So I don't really see a
need for the remoteproc core to prevent someone to design their
system/firmware to have a 64-bit CPU being passed 32-bit addresses.

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
