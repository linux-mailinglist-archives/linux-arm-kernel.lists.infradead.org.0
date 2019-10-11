Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5126FD43DE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 17:10:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xCFdE8n911WjD3zemnjMLmSAeKMgXNH1FxD1Ux2WJmk=; b=Wr6HEE7juo8z2u
	w8DRRK/qpOk3Lp/CdTdTeRyy4PWyVFpN1OmbPYspfnfsABJKFhv/kQBO1SCK71pgsX024HqDvYOlh
	rEjcTVPa2EXpQMcQW+mA+zfVQPexYf1pEOc6/4SBplE/YQdLg2LmlohCnRtUDQeWTvkzrOHsnCGnt
	Q1k/82RHmCtYweodWaTfPotp5UaGFvtgZeM8MrQ28sxkpG0HxtbgNp07SoaGAuR6dHvirdpuOnz2I
	PySfDM6TXgbNcZA13LVO+f2oc+n237L/cgZDitrn7XtuGOZNdKuuPXfg20CYoZCnJvgMmUWhSdOan
	JNX03zFWMXd/+d4ehgzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIwYj-0002pj-Qx; Fri, 11 Oct 2019 15:10:25 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIwYc-0002ou-1E
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 15:10:19 +0000
Received: by mail-ot1-f67.google.com with SMTP id z6so8256583otb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 08:10:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AYqY8ptTKV39xxtFZyc1+8jrTs0a76lcIovZ+BLPMag=;
 b=mUawJ0xebtldpboxcagRVTkwrl9HTV9DADnSBSPD/vxAeQ8R7ao4kBe/gkB7Ujnk57
 jDZEiuYc3UOvEMRNXjpmmz6WEKtGRSg88F6FM0UqYYDVFSL+oTqtoMBnBEFVQWAygHuw
 kyvRmeXl6/KalHQdJGnxFe0pKkDPkgETRIWFU9CSQAaRKshEvS+nOZ3y0d1weVq7gecI
 cNa/u9QroJQseGzmJSVcbfIVDbvJoAV1xXfrwG3OVowNRdCLMQAhG+JBZt/DoMsdicbe
 3YGCPX3pJMVxDCGNISWgQtFp3coVrNqlzqOdh0PQsoykV50E4wK49Rq2qY/+wwuqU1cB
 b9jA==
X-Gm-Message-State: APjAAAWeCGQpknIGenzYDd/W8xorWcgLBwHOJNUWYHdNUcy+mB69x1N9
 Mtv5OEOaGNk2Q8WKob513Q==
X-Google-Smtp-Source: APXvYqwkpn2Rm6NPxteihd3r7HUcq/7kBVqTZFOHHnjYbh6GQJSC3s6NgoJrW3CK0nueqj8fb335Cg==
X-Received: by 2002:a9d:7345:: with SMTP id l5mr3406363otk.39.1570806615029;
 Fri, 11 Oct 2019 08:10:15 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k2sm2719648oih.38.2019.10.11.08.10.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 08:10:14 -0700 (PDT)
Date: Fri, 11 Oct 2019 10:10:13 -0500
From: Rob Herring <robh@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: pwm-stm32: document pinctrl sleep
 state
Message-ID: <20191011151013.GA12791@bogus>
References: <1570193633-6600-1-git-send-email-fabrice.gasnier@st.com>
 <1570193633-6600-2-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570193633-6600-2-git-send-email-fabrice.gasnier@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_081018_071610_854DDB34 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 thierry.reding@gmail.com, mcoquelin.stm32@gmail.com,
 u.kleine-koenig@pengutronix.de, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 benjamin.gaignard@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 4 Oct 2019 14:53:51 +0200, Fabrice Gasnier wrote:
> Add documentation for pinctrl sleep state that can be used by
> STM32 timers PWM.
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> ---
>  Documentation/devicetree/bindings/pwm/pwm-stm32.txt | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
