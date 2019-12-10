Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 355E61187F7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 13:21:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7/46vD0cA54piAwoNN4mxVwDA6OlCXw/Tg0kt0xjcuE=; b=ZNUdGL2IMsycvz
	xchjdF34QcSvEwcj+oroab/USMeh2pBPvIOXH+AKm7cnihgXfvCtBISK7ueQ156PnzWkXZLJ3PIuI
	Ak+91v+tcDXrIYrbB1Ym0gKqmLf5EsID+icIg72T6CRfSQWFdmIFhO8pH4J4hChj5UVZUwuEU3GVy
	UQD5j3HTGhiaIxrAwpz7mmlGhXRU9u8R5naIm2ebY0nLZTokROipUsuLO/DOKwZWoicufAKWpzSkY
	5o6XtTYYI6kLbUUicSz+v7FFkr8E1gDcbRMNGdBSeGc7yVwlu/q+dowl5cwstzsvEKVk67k31IQq7
	kWUt0LLckp9efstPNnWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieeVk-0003EG-89; Tue, 10 Dec 2019 12:21:04 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieeVb-0003Dj-Hq
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 12:20:56 +0000
Received: by mail-ua1-x941.google.com with SMTP id q22so3418644uam.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 04:20:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+GXCkz0A083CnW2Auy3zOSjwo1M0I1o2oKHeSL9F3ck=;
 b=KyH5SEa3abXaiGToIC3ZdQDJPjQz7ehlNHa1ewyHS05ElloLcTSWUH0+HHxGSpmv35
 0zlWrNuW20o6rR7byo5kwkQGHdbqOsjtqAk71j96a9o1pdQ8ZalAOazL9CCburkIWQg3
 QHXevI2feYkETt3mDJ6WQBTmj6EZ2zjN/PiP6GJdTkujIbnhuW6Vce6LMqVPlCwGIfJt
 E8byyo1vnZ1FiSNFISAIBbopXvRnZtV3tsqzNmLNKEya3TQpuE8vYslVfw1+wssR+kLR
 KxGH+irE1aFPt39ROF9djLlen7lWYJ9nXFdNXFLZ3P2/XbWfdiiOcvpQVQe4QFLEAp4n
 WPaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+GXCkz0A083CnW2Auy3zOSjwo1M0I1o2oKHeSL9F3ck=;
 b=rSQIG8cie5KQxsLyM6jLQlleTbemfibj9mrig65pB6HRmSWovBPxRNupDJazSlKJUM
 HGUlu+Q7pgYohQCBYJiYwTxz2+1pZ8Bzfq9eXZpdtUffZKFc4GTRJPrgHsKQN1ESdjgU
 3YYySvzLpx1ViHIwcrZP7lIEoSMDLzcx3AvFj7H5fBbsdcqptsHfA9raAw+NfHNeCFmw
 gpHPtzYbHgprIMt8bZidugWLZ6Uhg04ldybcwdBiYDktoPvdN0KiB0RbLtl+Zh2TlJcW
 seYJ7VrfH6/c8vEkVQRtekAmlWrAy60L0LLPo7R4U5pFIYL3h1u3a4SKgTslD9NRIHZK
 u5Lg==
X-Gm-Message-State: APjAAAWoUgVIdzB/2D5khCdHM0M+m6C+JxHgoLl4xkFl5kCyvrN0BPGT
 DSElVpkTYfX+yNQMvcz2sXYvhbDaFByQgsmZ3XsDkA==
X-Google-Smtp-Source: APXvYqyXodp8MezisX2Ogin4ZbF5PMroS3cE2mukEBRUXULiSnp8AsW1NNU4k9XYdJLiuEsKDM0ea9YUPKV0ekMZ3NQ=
X-Received: by 2002:ab0:4ea6:: with SMTP id l38mr29080701uah.129.1575980453850; 
 Tue, 10 Dec 2019 04:20:53 -0800 (PST)
MIME-Version: 1.0
References: <20191113172514.19052-1-ludovic.Barre@st.com>
 <CAPDyKFooSJUn6UCE6QkFmJOCovm00ehz_nAPbiNQM3AcJT_bJQ@mail.gmail.com>
 <c8311933-d129-4618-b81b-aa627b7b6de0@st.com>
 <e80f76d3-0414-4f65-c2eb-4b09aaba3840@st.com>
In-Reply-To: <e80f76d3-0414-4f65-c2eb-4b09aaba3840@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 10 Dec 2019 13:20:17 +0100
Message-ID: <CAPDyKFpkkqb3nr1wm7hjMqJCxH7QHArxSm_oWV=M55ga9+0FKw@mail.gmail.com>
Subject: Re: [Linux-stm32] [PATCH 1/1] mmc: mmci: add threaded irq to abort
 DPSM of non-functional state
To: Ludovic BARRE <ludovic.barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_042055_603237_44B063AF 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: DTML <devicetree@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ludovic,

On Thu, 28 Nov 2019 at 15:06, Ludovic BARRE <ludovic.barre@st.com> wrote:
>
> hi Ulf
>
> just a gentleman ping about this thread.
>
> small summarize:
> This patch return an IRQ_WAKE_THREAD only when the variant is
> busy_timeout capable and a datatimeout occurs on R1B request.
>
> So the threaded irq is called only to treat this specific error.
> Normally, there is no impact on HW flow control or for legacy variants.

Yes, this should work.

>
> In your previous message, you seem to suggest using threaded irq to
> manage HW flow control (pio mode). But Like you mention below, the mmci
> legacy could timing sensitive.
>
> For the moment, I prefer to use the threaded irq just to manage this
> error. If needed, the irq threade could be extended later.
>
> What do you think about that?

Yes, that's fine!

I have another minor comment on the code, though, but posting that separately.

[...]

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
