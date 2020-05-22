Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 038DE1DEE53
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 19:34:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0sedcqsUiGx/vRzXaKbLYpJxmDkTWDPcBv7UFDgaFjc=; b=mez5KMwcUgB2PJ
	tY2irRW0JIlaQQOqaQO1Y/fOng/MCMnMr6XbngH8fcQ6vyvvpQpVlUNLjNbMgLcVedYdUcbUjFPe7
	OfYG7OmzygOaMuXvX/aOc5bjDTpxIeB7uEEXbuOLDHK9+3q2Xlor66OpVSu/y5Ox9BZnBU/V0Cru3
	30ArnEvxUNHA/oIL0nBg5bieLgzkRH9wPWJfB07H6uZ1TFdPUJbdAu3uhiOars+sb9wis6V/LqH+Y
	5E4XoeP7SORrzg7bjog7BW2z2UvpF7G7Ow53m6gnSbHatpW5Gmp8bnALVC9h9DQhxRxOpqKZF1cbG
	n++CsljcZFx41PE8RuKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcBYZ-0005kr-BM; Fri, 22 May 2020 17:34:03 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcBYM-0005k0-ME
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 17:33:52 +0000
Received: by mail-pl1-x641.google.com with SMTP id a13so4655379pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 10:33:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=2tZSSQp+Q6NkFkvGgoTM41d8a2brRtjrb60yXEtR4oc=;
 b=xM7/kxVnNd5tkM3aD88kh404nBLGZ0PykMDKj1PajSxvbZKv5gN1DQN4908oXvpFkT
 D5j4s7pQVcv3lluXjL5hsxnA5VxVZtG0VkOtyF+z/kqlbmj4mJwBQsl5vSglfKkcR8nn
 hCubMPJ6ImS9MjzxWO29RgINWtO+wzHImrvVO8bqT+EgexwI4z0GvFjyJSQuvA0RU0kK
 XlRnMSnPgLf+iGmebcMZntq3a8e1GSzPZl1G1vlmX5mofuMANElZbQzYDpVk5myzPSTI
 AGp8GUBRrS5t+JdFrWN109JV1COJz5flF4tptKa4cikXYJEW3rP9B8NjoLN/dHAbj2yd
 l8DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=2tZSSQp+Q6NkFkvGgoTM41d8a2brRtjrb60yXEtR4oc=;
 b=mntXfbJediVvPeep00m0zVUOaHkJOXHQNNFmANysfVgJOTkdBT5J6fBr5XBCnCS4v9
 9Fj66F62JfmnIlG0DE2ozyHxAdyhHhQk/T7Bmfwi6Ih/lgMOtqMtFR2KV+7ZREp7PEmS
 jkeNJdt4MmADhFWu5OJTtSylgZXr4oUjkzpoX23YOukkvwIFTFuZc3rbFUy3wKJhHCgH
 wFsceQTyuVRHawYKsZAFxMKYFDXpaiGhvhqog51prK9B7u4+w2KHdI60q8TBFxYzxdfY
 k/KKptxiRumCLc71XGU4gxkPmnh8fPNFJ5pHB7GQqLzp4IMI5EzN1tpyfUCY2fFIihUL
 DkMg==
X-Gm-Message-State: AOAM532uLTcd1JhqKTu0wK8fXRmX4FpS7AUeVOJJzKHOVde+0w2NkalI
 Wl/Fe6tjeybEwbUI4A0e+ie2xQ==
X-Google-Smtp-Source: ABdhPJxs9ytct9W3l8jqHigChSN52KDjrcdPVZee/8dxkQn+Y6KW9FWnWmyEjZpnERt5Wp6T0UgISg==
X-Received: by 2002:a17:902:8509:: with SMTP id
 bj9mr15699226plb.151.1590168829712; 
 Fri, 22 May 2020 10:33:49 -0700 (PDT)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id t23sm7426330pji.32.2020.05.22.10.33.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 10:33:49 -0700 (PDT)
Date: Fri, 22 May 2020 10:33:46 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH 3/4] remoteproc: add support for a new 64-bit trace version
Message-ID: <20200522173346.GJ11847@yoga>
References: <20200325204701.16862-1-s-anna@ti.com>
 <20200325204701.16862-4-s-anna@ti.com>
 <20200521180417.GJ408178@builder.lan>
 <997d6f9a-64ba-7a89-e909-9a5a474120b0@ti.com>
 <f15b0c6d-eee8-b839-0c79-a5316dbbfa7b@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f15b0c6d-eee8-b839-0c79-a5316dbbfa7b@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_103350_721469_9D681CC8 
X-CRM114-Status: GOOD (  15.73  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Loic Pallardy <loic.pallardy@st.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 linux-remoteproc@vger.kernel.org, Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 linux-kernel@vger.kernel.org, Clement Leger <cleger@kalray.eu>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri 22 May 09:54 PDT 2020, Suman Anna wrote:

> On 5/21/20 2:42 PM, Suman Anna wrote:
> > Hi Bjorn,
> > =

> > On 5/21/20 1:04 PM, Bjorn Andersson wrote:
> > > On Wed 25 Mar 13:47 PDT 2020, Suman Anna wrote:
[..]
> > > > diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
[..]
> > > > +struct fw_rsc_trace2 {
> > > =

> > > Sounds more like fw_rsc_trace64 to me - in particular since the versi=
on
> > > of trace2 is 1...
> > =

> > Yeah, will rename this.
> > =

> > > =

> > > > +=A0=A0=A0 u32 padding;
> > > > +=A0=A0=A0 u64 da;
> > > > +=A0=A0=A0 u32 len;
> > > > +=A0=A0=A0 u32 reserved;
> > > =

> > > What's the purpose of this reserved field?
> > =

> > Partly to make sure the entire resource is aligned on an 8-byte, and
> > partly copied over from fw_rsc_trace entry. I guess 32-bits is already
> > large enough of a size for trace entries irrespective of 32-bit or
> > 64-bit traces, so I doubt if we want to make the len field also a u64.
> =

> Looking at this again, I can drop both padding and reserved fields, if I
> move the len field before da. Any preferences/comments?
> =


Sounds good to me.

Thanks,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
