Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39861D1D70
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 02:32:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eyAEBvVNSVTnZWBMrzVNvpbblGsOjRwd0CjJbThpHnM=; b=fSud5n9K0aDH+z
	hT1wXKIKlS9GTGj/jqic+37ByNUBuTwx4UZU1vWs2tsNuFmTdHbtPlRGWhAs5VDQx7SdXon/Ci3pL
	LiRZ0s2RU01+BL0bOFpTj15mXIY7cChicRSbaH93AdopmifFQqHqyNqiappFoJEFch1Zf+/lpZX2F
	+oovZRKuZDYil9e6q7H4AhmP+VHujxegrldUm1LrJXLAneF3gyjpBS3s1QGq0jdyYPrdNFnPfAz8p
	yinSfDZ4Yf8K2MyoQOjpOt5sTc/62IyPoizTEd1LzwLGLTDsj99xGoHUmyChl454/tuaFjy0IOVH9
	kEADj3EiZ8Y0h2XWIEEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIMNz-0007dy-GH; Thu, 10 Oct 2019 00:32:55 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIMNn-0007dK-Qb
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 00:32:45 +0000
Received: by mail-pg1-x543.google.com with SMTP id t3so2493832pga.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 17:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hwafwgLNngUMlC4oWHtYvT1ITO5nzOsFkBcAKdpZxJc=;
 b=oCo2UZzh1NJar1FOnQunNDg7VGAZRVDrc8ixlgCW/wcPpqcbAY+3tTJEQztNa0qPbd
 2y6WZSQVkkY9AtGM+aPEqp3HF94vyeeFo6nEc2Eg3kwHaArGISKn/W1xFejrdf/UreTI
 +V1HOuSBWAdHe6al6wCyEhEU8Hp5TtUpOYlEJenBdOZaZFKjD8piSgFSp7Vicj6JIm3n
 MtJSH5prCSzllusqZ9hfVtYeGF92muQuRKFP3Uo3C00cHu0xR2EnTt8xiX2t7FrAhGA0
 9BlPDzcGsvaSvdONG0rW01PNl+JJFWFO5SW4IM69F+etf4MEFkP7Hp95k2XNdrahCJsa
 svIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hwafwgLNngUMlC4oWHtYvT1ITO5nzOsFkBcAKdpZxJc=;
 b=UWb/IGw67bscvKAKiYpbN3eN86GSsXV/XwB6JOXhpeJwExmDpvtqAIaL7L467KSHLR
 AIoivtlTfl6cG1NIwG/38JOPNcXJ3zDwZLNGjqRQEwSOXk6hLXeLZgpFErWQphodFZYV
 DL9IbeQS4G6fOVW86ooXYEEYyvxccEvjHtcm3ahjkhBTwEBaerOcnV+caDMFHlr5X5w/
 u3uEEyFETJmCQWZn6Rqfj2cuyvoyRD9eIWKzWggUc/sEJBWRW6XBBAVERYK57oihRbVn
 wAJ+IcBFjVY5mgXHQ1Bnu4eQFrGiTwRQUNQ6TPk20fLTi2JiK45rUq9MMKwnIhskvn+7
 XZDg==
X-Gm-Message-State: APjAAAVLAk7c6lBto3yYN0CGD42UJnUsrhznFnuYeJAbknujr24GK6G4
 ubBBUZKJE7jBp20w7MGbgfqSOA==
X-Google-Smtp-Source: APXvYqy44rmUKloIJITmQv3fmo4qusdRi2qGuLDOcOb1+z5L9mdE9mmEgbP0UrkPP86MCtd6AwIPJw==
X-Received: by 2002:a17:90a:2142:: with SMTP id
 a60mr7497811pje.8.1570667559681; 
 Wed, 09 Oct 2019 17:32:39 -0700 (PDT)
Received: from google.com ([2620:15c:2cb:1:e90c:8e54:c2b4:29e7])
 by smtp.gmail.com with ESMTPSA id f128sm3743411pfg.143.2019.10.09.17.32.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 17:32:39 -0700 (PDT)
Date: Wed, 9 Oct 2019 17:32:34 -0700
From: Brendan Higgins <brendanhiggins@google.com>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Subject: Re: [PATCH] i2c: aspeed: fix master pending state handling
Message-ID: <20191010003234.GA12710@google.com>
References: <20191009212034.20325-1-jae.hyun.yoo@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009212034.20325-1-jae.hyun.yoo@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_173243_888469_422A8DFB 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -13.9 (-------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-13.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 1.8 FSL_HELO_FAKE          No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, Wolfram Sang <wsa@the-dreams.de>,
 Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, openbmc@lists.ozlabs.org,
 linux-i2c@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, Tao Ren <taoren@fb.com>,
 linux-arm-kernel@lists.infradead.org, Cedric Le Goater <clg@kaod.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 09, 2019 at 02:20:34PM -0700, Jae Hyun Yoo wrote:
> In case of master pending state, it should not trigger a master
> command, otherwise data could be corrupted because this H/W shares
> the same data buffer for slave and master operations. It also means
> that H/W command queue handling is unreliable because of the buffer
> sharing issue. To fix this issue, it clears command queue if a
> master command is queued in pending state to use S/W solution
> instead of H/W command queue handling. Also, it refines restarting
> mechanism of the pending master command.
> 
> Fixes: 2e57b7cebb98 ("i2c: aspeed: Add multi-master use case support")
> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>

Reviewed-by: Brendan Higgins <brendanhiggins@google.com>

We don't have any multi-master setups, can we get a Tested-by?

Wolfram, since this is a bugfix, can we get this in 5.4?

Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
