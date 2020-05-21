Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E601DD551
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 19:55:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MkJxwGPwn8qClhgQF947F/cxiTDaAFZ4+E36PjifAs4=; b=U6L8eBSk+qArAt
	wERipMjCkPkjWstLmVrqnOoFEUjxmG5Ut0vAI2tPBNIQSGCzZL+I6K3bIH2Nj35T7EJxhwOO+yn/h
	+byBFQNBx05esgNJVrPI8ACBvgX6HE7MprNe9UTOtePTDp8bflDvrNXpVSwHYxxLlXcwnHQRbg4E1
	/zHL9FmtJ5Xy7BOkYkQWL/qkDmoet8aTCbVDs/lt4tNtV8OWDoLFmzAmf0QEeGUImHChWY531h0JI
	F3hy63X/0tuKqVrWFStpuTAYFEGagxPKyZ7BZgZEvkLKmfuJ7B4EeXKGyjnxwX0ab9kJwS3IE5elv
	eqgo6X/Z9r7fhacFVjMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbpQ7-0000N5-NN; Thu, 21 May 2020 17:55:51 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbpPy-0000MU-If
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 17:55:43 +0000
Received: by mail-pj1-x1042.google.com with SMTP id cx22so3461193pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 10:55:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=JoWH0REhDbs0g6wW5aH8Wpi/nb2uuxOqbrdrCjoMjrI=;
 b=ViIzU9LQNw75MOmE5VTuvUeN7jOryNVvFx8+ZRqtUDHTR/f7tFcd1DOLXKl2MVNFkc
 bDkpesjGCYOnam7JUaI3LXRpBilNYiFEh59k86RsudmUF2WC0ooRRmnnLQstWRrUfhkD
 3IwUlrFgtq6L4Qfi/0mnC1RtiFOlTdlBw0v5hinyynS+56wyDNYHuErMi/UCXK3JyaNX
 +ReL8f/44ulBHJeT0QOhGuy1ogAjkOEKjI2kN8ag8NeGfX2jMoqsKIooGz5WxwI+lMDo
 ErtkvJSA70kUA7bsK7dYUHKa7qIPiVOCh97AywxPbXQv8rxZzW+Ie6mTpCBHNDGjAura
 X+eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=JoWH0REhDbs0g6wW5aH8Wpi/nb2uuxOqbrdrCjoMjrI=;
 b=myV0HcPRzQ+pWushRyIWmJVnC/BMCjw83Q/KYHQhV6zmlYzpInkaWuyLxzW7B4mRY7
 CownXz0j0y/2miUdULWBwnT1lmc0kcbn4tEOqDM/9jxsE7TgI64I4uZ3DPnNySMdNHdj
 pMELga/+3DFoA6aqZnz4fUavAxkU7YnUbeDgUQKypuiwZ5QRijLCUYQ0uhctKnpRQrqH
 AmWPhGVG/aRONcKrLil1hlTV22dR0nWCqQJLQ2BelRVlkIOeclB9jlsI7lgmsvXAKh0V
 BK2bPC5QHrxrvl94qPRq6glRGZNGMpAvA4iTqJDWar6+pOMZXwJ2wSklQRe2ENTS/kZU
 YF+g==
X-Gm-Message-State: AOAM532idHPqqXXtg8WlE4R8p/naBDZ3M374bUCK+u2/+C9SnEtXE58S
 /3m+twWr44LFMbwdVWhVgVpSgQ==
X-Google-Smtp-Source: ABdhPJxUxM/4rA75txn9J9XgVlPotcY/sB5d7p6t+dugQ766LOaek96hXGfg0EBf4J82FWYt5XNlkA==
X-Received: by 2002:a17:90a:ea98:: with SMTP id
 h24mr12335013pjz.195.1590083740620; 
 Thu, 21 May 2020 10:55:40 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id v75sm5160768pjb.35.2020.05.21.10.55.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 10:55:39 -0700 (PDT)
Date: Thu, 21 May 2020 10:54:21 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH 2/4] remoteproc: introduce version element into resource
 type field
Message-ID: <20200521175421.GI408178@builder.lan>
References: <20200325204701.16862-1-s-anna@ti.com>
 <20200325204701.16862-3-s-anna@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200325204701.16862-3-s-anna@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_105542_682011_0EBA9B3C 
X-CRM114-Status: GOOD (  18.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
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

On Wed 25 Mar 13:46 PDT 2020, Suman Anna wrote:

> The current remoteproc core has supported only 32-bit remote
> processors and as such some of the current resource structures
> may not scale well for 64-bit remote processors, and would
> require new versions of resource types. Each resource is currently
> identified by a 32-bit type field. Introduce the concept of version
> for these resource types by overloading this 32-bit type field
> into two 16-bit version and type fields with the existing resources
> behaving as version 0 thereby providing backward compatibility.
> 
> The version field is passed as an additional argument to each of
> the handler functions, and all the existing handlers are updated
> accordingly. Each specific handler will be updated on a need basis
> when a new version of the resource type is added.
> 

I really would prefer that we add additional types for the new
structures, neither side will be compatible with new versions without
enhancements to their respective implementations anyways.

> An alternate way would be to introduce the new types as completely
> new resource types which would require additional customization of
> the resource handlers based on the 32-bit or 64-bit mode of a remote
> processor, and introduction of an additional mode flag to the rproc
> structure.
> 

What would this "mode" indicate? If it's version 0 or 1?

> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
>  drivers/remoteproc/remoteproc_core.c    | 25 +++++++++++++++----------
>  drivers/remoteproc/remoteproc_debugfs.c | 17 ++++++++++-------
>  include/linux/remoteproc.h              |  8 +++++++-
>  3 files changed, 32 insertions(+), 18 deletions(-)
> 
[..]
> diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
> index 77788a4bb94e..526d3cb45e37 100644
> --- a/include/linux/remoteproc.h
> +++ b/include/linux/remoteproc.h
> @@ -86,7 +86,13 @@ struct resource_table {
>   * this header, and it should be parsed according to the resource type.
>   */
>  struct fw_rsc_hdr {
> -	u32 type;
> +	union {
> +		u32 type;
> +		struct {
> +			u16 t;
> +			u16 v;
> +		} st;

I see your "type" is little endian...

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
