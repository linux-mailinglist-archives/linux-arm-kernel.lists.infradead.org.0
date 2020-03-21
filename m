Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97E7A18E36C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 18:43:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PjK8j27U8zsk5wVvqdd82uH98Ay1MQuOlsC1JWMPzHA=; b=Eu+8TjEraEG0EC
	pLmmKqboUJoLmHYLkKepzFY5LNmp91chQdNhmCas9198Syd4pMsFpLus5Q5xzsYbaJJF8OtVx+LCF
	Ct+VuTDFnVIDg2SIMMeQU/vUtvjlfMGNu/3MixDQDkiUvw9sKbTQGIx0FUwgOJol5N5UlrC8JUq6r
	H1zoscvXI2+EGr0lNIIGeeZvO2wz/DrtOWm178WukwMfHjRkGQztMs/iTC4qEUFczD1aszW0ajRo5
	+KAulKsSO9+b026uHyeNwacrmVLeGfrq75IY1umW/VE/59/Vlz2XM0XPnltiNzHU+RvqPXvaUIKOS
	BDPHpNKmpj/RZ1lmjEnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFi9X-0006TH-6W; Sat, 21 Mar 2020 17:43:19 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFi9Q-0006Sc-4r; Sat, 21 Mar 2020 17:43:13 +0000
Received: by mail-pf1-x444.google.com with SMTP id h72so2871790pfe.4;
 Sat, 21 Mar 2020 10:43:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3fStVl9rL3YRgIiAf/TzVVtMNrh3VX50fi0qgiiuA8o=;
 b=UXIHaUBhFEcnW+OMHvNaZ8x6pk7Kw7xSi1XSqUQ/ypXJwX+/0kjbU9/UcI39UYrFww
 L4SWYiuz/x5ZDo+euy1EVFm6/xEfsJuGVNtbr58w1aJIyLLbxr5Zvw2YV6+Jz2IFJLx1
 hSKDnD+ugCfCtYPbwa0qtQZzvaVCFI/U0Hh49Bh/9v4+8cPYNZpxmxPxHCL/ucL4FfPB
 t55wM9/sifQrsJ2x7qaYOUyTwSXOMqFFX7kbT5BvfLIkW8EyaBXHAHAACDZSlA65LB0e
 +oYG1mMj2pkG+negyyMWiq2E57sl6r93kYgmOlv5Tvke5FfWZ2pC2/wfVUCgtyT6TaL9
 9P/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3fStVl9rL3YRgIiAf/TzVVtMNrh3VX50fi0qgiiuA8o=;
 b=J+HpwUbor4NKmgN7MG6mNj8RvDsDlGT9VbfE9HtHwgSfpy+dLMLvkNOKR6Tfc767+n
 +7BqKNdAT0aLSUGVTxDJV1B/KL5mh45igbu2ZGKsyt2khdc1uZ9CKSvWL4UrtLAThJPi
 tBwTXr1rMwoROdAhdH1ENQi1oCEuHTJQuA7kENCKjRqImeqgKfQityZRTcJtuxAGSYT/
 L0zK8zqRfki/Mc6x6Y4h2ZnqDS6RzN49h6r/u3vtM7bYUsZskcDbxAozxQ7tknGUqQoY
 zkzCh5sVr9j8s3nASVIPB9wyxlKFo5RvFgZIJnSgFNPtxAY+vt6o3PcWrdx5/CJJ9VNr
 9geQ==
X-Gm-Message-State: ANhLgQ0yvqlz5MGifLULete1zl6MENmB/0oW1jtfl6x4PA+tRLdOspEq
 HkgwhMwTqSP+BnpUACIedaM=
X-Google-Smtp-Source: ADFU+vtSB9sj3T3LCfhecLdyVMoQimjNCV0Ow3ys209048E+VImdKW1kqpUYGGvxT4nwaYSYvsoI7Q==
X-Received: by 2002:a63:e856:: with SMTP id a22mr1215468pgk.283.1584812590871; 
 Sat, 21 Mar 2020 10:43:10 -0700 (PDT)
Received: from localhost ([49.207.51.24])
 by smtp.gmail.com with ESMTPSA id f127sm8973833pfa.9.2020.03.21.10.43.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 21 Mar 2020 10:43:10 -0700 (PDT)
Date: Sat, 21 Mar 2020 23:13:03 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH 00/18] genirq: Remove setup_irq()
Message-ID: <20200321174303.GA7930@afzalpc>
References: <cover.1581478323.git.afzal.mohd.ma@gmail.com>
 <87y2somido.fsf@nanos.tec.linutronix.de>
 <20200227110713.GA5708@afzalpc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227110713.GA5708@afzalpc>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_104312_214764_274B02DA 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-s390@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-ia64@vger.kernel.org, linux-c6x-dev@linux-c6x.org,
 linux-parisc@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-hexagon@vger.kernel.org, x86@kernel.org,
 Nicolas Palix <nicolas.palix@imag.fr>, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, Julia Lawall <Julia.Lawall@lip6.fr>,
 linux-m68k@lists.linux-m68k.org, Michal Marek <michal.lkml@markovi.net>,
 linux-rpi-kernel@lists.infradead.org, linux-alpha@vger.kernel.org,
 Gilles Muller <Gilles.Muller@lip6.fr>, linux-omap@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Thomas,

On Thu, Feb 27, 2020 at 04:37:13PM +0530, afzal mohammed wrote:
> On Thu, Feb 27, 2020 at 11:31:15AM +0100, Thomas Gleixner wrote:

> > Vs. merging this series, I suggest the following approach:
> > 
> >    - Resubmit the individual changes as single patches or small series
> >      to the relevant maintainers and subsystem mailing lists. They have
> >      no dependency on a core change and can be applied where they belong
> >      to.
> > 
> >    - After 5.6-rc6, verify which parts have made their way into
> >      linux-next and resubmit the ignored ones as a series to me along
> >      with the removal of the core parts.
> > 
> > That way we can avoid conflicting changes between subsystems and the tip
> > irq/core branch as much as possible.
> 
> Okay, i will do accordingly.

i am on it, is delayed due to the reason as mentioned at,

https://lkml.kernel.org/r/20200321172626.GA6323@afzalpc

[ not repeating contents here since other mail was sent just now,
  cc'ing you ]

Regards
afzal


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
