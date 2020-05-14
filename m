Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B991D3056
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 14:52:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hvcmyuAonkvC0YeuiDt2JZBR3dzaLUD3Dnlp9MOrGBw=; b=BOkqHx+X1qmNEr
	U17sDzIVKKKdifW8U9kLsbFzVTPOddFJI1F8Nl7/QAiAmNc/Sp8hzGWcDV95dMFAmMnKDVlWek7wR
	rLsdfKS3o/nxNog8AaHyDtOGU207zf7hTT81as1IPrGJg801nVy3i999o9rkboQFatTPvi7RMODOZ
	fdH8M5vVyUMcJyeaJSZmwtB7TGN6q/IsEDpvJJfbk5jRITcaeqFHRAIwSipoJaB4miavIcZaKEzHi
	u2UOEBxBrzOVVRjtP2YzFqr7Xw7TssW0q/nls9RVNr5ZumADNTXaEcR7vIURjvrD4XE+he5dWtHlx
	K46IFUxjjvIg0gvkCGKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZDLu-0007eA-SX; Thu, 14 May 2020 12:52:42 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZDLn-0007dW-1F
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 12:52:36 +0000
Received: by mail-lf1-x142.google.com with SMTP id a9so2513779lfb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 05:52:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uCoIlQA1207VBvJOUJdZ2UqHgsI7A1R5G3zb7vQc0Lw=;
 b=Zke3BM2V++gC9yF7VuYXsh1sPJJjvKEdtcXN6VMzhbH+Pcnpbq0qF52Mmkjd9CdQ2V
 92lFlJOHkoUsxbItqH6bfVqf898nkx7Ws4uBGIyjufpOrddR71mw8Cyq9Ih6tn1tTkRj
 LDtmRqzeeW9GN7NCB7rnU1eGLklr9R81jdMTy0zGs7KiTg7WqGIT6QniCOVViTf/Hf2P
 qX3HBBAI0bkilJFGK0er7tTkMcJdCD6EWv5CXhJsSbCUxygFsOqQ+nNxLLeKurzD2uhb
 HtTDtsYs5Fx03nc3tlMcw6PNjJ4SphltEjZbwwaUORNGJGa0hsXRfrClEGs8mt2poWJk
 IboQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uCoIlQA1207VBvJOUJdZ2UqHgsI7A1R5G3zb7vQc0Lw=;
 b=lfc5dJ5PHeYhaYUT6Dl7yfU31CmYrQkqGGzwcE/fAkcz/3/eik8rmIFW4+hc/b2F6f
 za51yUOUimgZftDCF8sMyd/drgvMky9qElIuu+V5q9CuJ3005s5kdDnBEUzFlParm7Dq
 V2ZCm7Mcoym1BmEDfx+ML2tB8ROf+B4GR0/DFUCEVOyMYKu0RK5yJwqvZ7cqiDJbVu5r
 NoUYkZmxNMX2NeWOsRNyh2z7CzI1WwF9OMdiEVyExu25zMlM/bxnOnOIKTmQE8JG4x1T
 Hb3aVMaCHDqUVWNyXPqPPzR1mZi94+LmW3foY22BFAqeQYd7U9SxjkiKl1KnUNaRWtAz
 DPAw==
X-Gm-Message-State: AOAM5334r7PUfCfWntMY2vOvXBe3wTVlNKQgJGbhfJgSVom8RWtM5ufL
 onPbL2lvbIGscpe+JV6qB/nxqETkyQOSwbIV7qGtQQ==
X-Google-Smtp-Source: ABdhPJzy+C6tPu4BL7LNgfmr8TNC0GWk/3OFcD4pNyUqP/+T/nxt8ulA71JsymOcnp6KvxyuGR+efebqw+GbtFjIs5c=
X-Received: by 2002:ac2:4da1:: with SMTP id h1mr3214154lfe.152.1589460752472; 
 Thu, 14 May 2020 05:52:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200514082109.27573-1-etienne.carriere@linaro.org>
 <b8661499-6ecc-2adc-9ed6-b7c428a8aa35@arm.com>
In-Reply-To: <b8661499-6ecc-2adc-9ed6-b7c428a8aa35@arm.com>
From: Etienne Carriere <etienne.carriere@linaro.org>
Date: Thu, 14 May 2020 14:52:21 +0200
Message-ID: <CAN5uoS-t-xzk3nGKyd9jJA6h0GM35qT+1tb2wpBA=BVV4yPVbg@mail.gmail.com>
Subject: Re: [PATCH 1/2] firmware: arm-smccc: define identifier for Arm SMCCC
 v1.2
To: Steven Price <steven.price@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_055235_078424_BD26D620 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, lorenzo.pieralisi@arm.com,
 maz@kernel.org, linux-kernel@vger.kernel.org, alexios.zavras@intel.com,
 Sudeep Holla <sudeep.holla@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 will@kernel.org, "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 14 May 2020 at 14:38, Steven Price <steven.price@arm.com> wrote:
>
> On 14/05/2020 09:21, Etienne Carriere wrote:
> > Define identifier value reported by secure firmware when its
> > supports Arm SMCCC specification v1.2.
> >
> > Signed-off-by: Etienne Carriere <etienne.carriere@linaro.org>
>
> FYI Sudeep has already posted a patch to do this[1].
>
> Steve

Thanks. I'll follow the thread.

Regards
Etienne

>
> [1]
> https://lore.kernel.org/linux-arm-kernel/20200430114814.14116-3-sudeep.holla@arm.com/
>
> > ---
> >   include/linux/arm-smccc.h | 1 +
> >   1 file changed, 1 insertion(+)
> >
> > diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
> > index 59494df0f55b..1cf221f3f07a 100644
> > --- a/include/linux/arm-smccc.h
> > +++ b/include/linux/arm-smccc.h
> > @@ -56,6 +56,7 @@
> >
> >   #define ARM_SMCCC_VERSION_1_0               0x10000
> >   #define ARM_SMCCC_VERSION_1_1               0x10001
> > +#define ARM_SMCCC_VERSION_1_2                0x10002
> >
> >   #define ARM_SMCCC_VERSION_FUNC_ID                                   \
> >       ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,                         \
> >
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
