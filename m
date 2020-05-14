Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0171D3929
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 20:35:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pGoE1Vu3Sg34wrYcJkUWqxj3sOiq+0Z7H6i+bKTp1hA=; b=VGYdh7l+tkHvk5
	t+32iEPMKY96JI3Kqf9Y55iHoDgXNVkaA2EU4bzvDYkP9EetSPEvjqMGwoF/0WmbW6R2zZvf5hfJa
	VyIvuDTQwUf5I/2SjHjFlmYJlCwofaO6tAVvCAmEuvMLC31VwUUxoMwTtqV9IEyI8GcKOhRO/mYH0
	5AYIeIly0Wc7pDoBH1fDFzQgdbpu8a6V22KeU7vB/t5jnoToovnaP65tizertd7VpIvHND7fG3Ip0
	NCfrZ46mP5bThu4BN9TOLzqX7//tRH7+yJrEUpaTljR9A0dL34ucw46IBIb5BPObaf+ojktRBK7NX
	+f94rAE4RleoZaTyFEQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZIh3-0004vL-Tq; Thu, 14 May 2020 18:34:53 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZIgx-0004uk-81; Thu, 14 May 2020 18:34:48 +0000
Received: by mail-ej1-x641.google.com with SMTP id s21so3691668ejd.2;
 Thu, 14 May 2020 11:34:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9VzYKzBvqC75VcPkywsdMxmxFnXHOoxLK1AEgaB/V5Y=;
 b=g5t9TI0lRFOqTU+zNIA++xrtaX4gse1lRCl4dDi4w0XHna0ydkavbp08zMERmsR1+F
 jLbHmeOAcMdzBXztP6TK5ZDS2CaALpg11VS3rfpbKQuMy11eeMY8Noka8zMyd/+8jvFp
 oezrrkr8OQ4XsJnIaEqhKbDfnMh9dJedJHngPUhf7NpJ+90R7T6Js6U/UA2saASVTlF/
 1ih/rbdphSy8cGFkR+z0hCER0E/sUlUkbvmXSpkeVwY3r0j4+iDwavq/MO+TvDOg3xjE
 3Za280hfeKo1DqvWcTxDCYjbFLZvtrRgmvViYmR4wC2DEmbGyDluyjo01OAWxvVno0Td
 /8PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9VzYKzBvqC75VcPkywsdMxmxFnXHOoxLK1AEgaB/V5Y=;
 b=FBEBlL6nb4rrxqRYY9M+CM3176xoM/fn+JI/cC7WZom/ZwGvQiwqB8j5HW61tkhb8r
 4vCP15Tx5VV5sZyZi5asoCjVDoOjFYyvCTempbUwgtWpIfR/wvRcV86IX4bFj8M08BsH
 +QNlQFGqs5Ou3bZLUCOY7srGwPWZeydp6Wntbp1kkJX9vjVVu2MU6FNs0gDbAY7D8qKb
 V5jOSkc3sw5gFdma4RMo9MMm31DUa0loNoVEqd1AxjHEIUz/rQmOwiY49PE096t5ihhM
 mcubbywnUqnG5cu1WsyFEN7ym5Ec8cf0XDL4T1bB8pe+H9U1RNZvq292l8yqm939nPM7
 u2jA==
X-Gm-Message-State: AOAM531Ie7b6L9XnspDU4Kn6ACsC4luTtxCQdQ9jO59/F28M+agy+X8p
 7BL3xxDNHUl+tt3qirJU8Spn0OSzVMRXaLdDoLE=
X-Google-Smtp-Source: ABdhPJxCvxVC88mtHnROOgzUv7U+F6ZCgavmc3C+D/JK94/ZBvycpZLxsWEk85DnkDZz3BcigqI2fEQAZP+4G1unGuo=
X-Received: by 2002:a17:906:7e15:: with SMTP id
 e21mr5363706ejr.106.1589481284585; 
 Thu, 14 May 2020 11:34:44 -0700 (PDT)
MIME-Version: 1.0
References: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
 <1589472657-3930-2-git-send-email-amittomer25@gmail.com>
 <20200514182750.GJ14092@vkoul-mobl>
In-Reply-To: <20200514182750.GJ14092@vkoul-mobl>
From: Amit Tomer <amittomer25@gmail.com>
Date: Fri, 15 May 2020 00:04:07 +0530
Message-ID: <CABHD4K8F_sk3Xsevu4pMtR1jEanh5-dSATLYySPKW-nDY9fAvA@mail.gmail.com>
Subject: Re: [PATCH v1 1/9] dmaengine: Actions: get rid of bit fields from dma
 descriptor
To: Vinod Koul <vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_113447_309758_3F557335 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
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
Cc: Andre Przywara <andre.przywara@arm.com>, linux-actions@lists.infradead.org,
 cristian.ciocaltea@gmail.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, May 14, 2020 at 11:58 PM Vinod Koul <vkoul@kernel.org> wrote:
>
> On 14-05-20, 21:40, Amit Singh Tomar wrote:
> > At the moment, Driver uses bit fields to describe registers of the DMA
> > descriptor structure that makes it less portable and maintainable, and
> > Andre suugested(and even sketched important bits for it) to make use of
> > array to describe this DMA descriptors instead. It gives the flexibility
> > while extending support for other platform such as Actions S700.
> >
> > This commit removes the "owl_dma_lli_hw" (that includes bit-fields) and
> > uses array to describe DMA descriptor.
>
> So i see patch 1/9 and 2/9 in my inbox... where are the rest ? No cover
> to detail out what the rest contains, who should merge them etc etc!
>
> If you are sending a series to different subsystem please make a habit
> to CC everyone on cover letter so that we understand details about the
> series. If not dependent, just send as individual units to subsystems!

Ok, I would make note of it and Cc everyone on cover letter going forward.

Thanks
-Amit

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
