Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F34DCD8C6
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 21:00:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JbmYxkh+JdekD8Nc4taV5SJOC9Hqy7yuXQmRMr4vCxA=; b=A4lyArAoKWTlEE
	zoU6moElI1Tjf+WrbBX4BifsWth8omTsFadjMUl8uxYywyUhSFZERiaWjKN+3T4Ck0pxVDBqF2mO/
	GHf7wgEbSgwt2YBE3JfS7zgVczM9cVXaQayTYnA6QF2hLDh8N8DYvRXB2lZnrj1Hpo/FpVjHmiNup
	pQLNUuBgT4kk7MB5EZzjrstuvkv92H7pdnTa7Nb7XdZ1Mm3ZOInor6pJg1t9ALf5ezqemJ5PhjCE8
	RAdpIgqKxD3yoezoqstvqnf1N01ox6GqGVmGRu/iXhg7vGAkNz5eZqVdFSql9aSva9sGvzFzCFrQG
	VolQ9s/0530dP1787cZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHBlp-0002Tf-CS; Sun, 06 Oct 2019 19:00:41 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHBlV-0002Qz-9R
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 19:00:23 +0000
Received: by mail-yw1-xc43.google.com with SMTP id 129so4302142ywb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 06 Oct 2019 12:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Us0YKrblQgRWQeQuWKfageTMytCoGjV6GZJUa8EZKdM=;
 b=vCBiJc2l54U+LpFa1SuZysYnPwwhlPxepmSDVBJYMdVb6Q7hWJbhJ6eSk63Jnb5TK2
 7+gUjyeZAjWdiXGXKgcylByeMsqKQVjAGQQeWPN5wsj3o+BkrZd3YceuFfxhWuXlGrdH
 lOicOIy3jZVhGEe9IrQnww/T38JLbfkVl88LLh/JSwcd5NS+axKNag6QRJEHSa3KsBsc
 Wny1HAeTld1/jLWNuEgFaR/IyBuCCQd9ahnN4tg398OslAV9sH1rmKfPO/SQOt1pDRbd
 N44zn8xCkvmaY8LpqKnGP9Hl2ByQ+I8+v0veA3xCahyZPEaBRw+7o0DyV3sU03DcQhmX
 /wHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Us0YKrblQgRWQeQuWKfageTMytCoGjV6GZJUa8EZKdM=;
 b=rEPdOhOPkwEY3B6waenVictXSv77yKL2GDMWYAjxYsaer/dyT9aTQhleWZgXQ7/teJ
 5RXo3nSMaIUzW2KPZ11G1mHaZqPmSLK57woB4L+4f1POXgtYFgtUFWxMT9Kszo1N67gC
 8pVX7jlsnHqXIAOLcCl4trrd6cHA37e/baXn0J6qc5You1akPriLSKU+ksZ3TSpiY9Wd
 iHmlmRPWgEFCB+uuBowlV4s8wi12JSCHQrFn02gU4EuOWlVZ7MpNT/rSgleIJ0+xXyds
 Awsz4G83As2Cqj/t53XBVyCBROuxX/Oz4YXKXv8XCRVhe0ZnCSVCKfsWssaL7hwDcXrv
 Pwyw==
X-Gm-Message-State: APjAAAW53jSqj6X/ylnfV+TIdGoTeeU7HUcecVBRenCvsg19+oB7pJAG
 HfS5Jpcs9GxPuZccCor63RBLXS8r
X-Google-Smtp-Source: APXvYqwdTQIpeCuBbpBgsgUkoMbPKwFrUZ55vm0hSSmZPHtZGSP1k/+YTPKGlaAuUOJDEyzp13hpmQ==
X-Received: by 2002:a81:178f:: with SMTP id 137mr18588158ywx.487.1570388419603; 
 Sun, 06 Oct 2019 12:00:19 -0700 (PDT)
Received: from icarus (072-189-084-142.res.spectrum.com. [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id j17sm3315602ywa.71.2019.10.06.12.00.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Oct 2019 12:00:18 -0700 (PDT)
Date: Sun, 6 Oct 2019 15:00:04 -0400
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: David Lechner <david@lechnology.com>
Subject: Re: [PATCH v4 2/2] docs: driver-api: generic-counter: Update Count
 and Signal data types
Message-ID: <20191006190004.GA109365@icarus>
References: <cover.1570377521.git.vilhelm.gray@gmail.com>
 <75a9ca9837f4d66cb4912cfa535176e27f7c219a.1570377521.git.vilhelm.gray@gmail.com>
 <9850a671-2822-24b7-3c22-b4abbd6a6b37@lechnology.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9850a671-2822-24b7-3c22-b4abbd6a6b37@lechnology.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_120021_456951_2373C50E 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: benjamin.gaignard@linaro.org, alexandre.torgue@st.com,
 linux-iio@vger.kernel.org, patrick.havelange@essensium.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Oct 06, 2019 at 01:41:42PM -0500, David Lechner wrote:
> On 10/6/19 11:03 AM, William Breathitt Gray wrote:
> > Count data is now always represented as an unsigned integer, while
> > Signal data is either SIGNAL_LOW or SIGNAL_HIGH.
> > 
> > Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
> > ---
> >   Documentation/driver-api/generic-counter.rst | 22 +++++++-------------
> >   1 file changed, 8 insertions(+), 14 deletions(-)
> > 
> > diff --git a/Documentation/driver-api/generic-counter.rst b/Documentation/driver-api/generic-counter.rst
> > index 8382f01a53e3..161652fc1025 100644
> > --- a/Documentation/driver-api/generic-counter.rst
> > +++ b/Documentation/driver-api/generic-counter.rst
> > @@ -39,10 +39,7 @@ There are three core components to a counter:
> >   COUNT
> >   -----
> >   A Count represents the count data for a set of Signals. The Generic
> > -Counter interface provides the following available count data types:
> > -
> > -* COUNT_POSITION:
> > -  Unsigned integer value representing position.
> > +Counter interface represents the count data as an unsigned integer.
> 
> The previous patch looks like it is using unsigned long instead of
> unsigned integer.

Thank you for the heads-up. Actually, this section of the
documentation describes the theoretical representation of counter
devices, as opposed to the in-kernel implementation of the Generic
Counter interface. As such, the phrase "unsigned integer" here means a
natural number and not the C language "unsigned int" data type.

I'm going to update this line to state that clearer since it can be
easily confused in the context of the rest of the document.

William Breathitt Gray

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
