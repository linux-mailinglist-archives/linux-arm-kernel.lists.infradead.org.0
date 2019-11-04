Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0645DEDA9D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 09:33:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PCKYTcmN3y+x9JSYnyHbXqQ6rAknxdIKKzOslSwKW4s=; b=gqPp8h9731apZdMRks3Rq0Nxc
	Qlb07m9xAcOlnuJOx6K8R0zQ+MYLGrrYrhg+Ts5Qa9zgfpy32F8hXu57p2z7mU/FwzwjXU/Qgm6kL
	4ewtwzogmy0IlCpbiUT/ziiNVSG+At42duHy7fMnbbMkFaIUebZ+wSlR9wcVNtmhdTgTOxozHCvuq
	lGR1rrp6GBjcwODelQx3PnJnRUSc1eK59zYVTg4BuhvEg4dI0GxWJiJ3F6blbDxnLoFk94Vtqdtlh
	L0ZJxO/QY4EEqfs2ih2rHyMXjIyH7gDmshGdzP2yyjmwnq5Zp+VstR7HCDZ7HhaS4lHC243vw5CSH
	hZYVuCjsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRXnM-0004SD-Uv; Mon, 04 Nov 2019 08:33:04 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRXnG-0004Rc-4K
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 08:32:59 +0000
Received: by mail-wr1-x443.google.com with SMTP id l10so15943064wrb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 00:32:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=XF7J+DG7tWV9RXyc1r5Ixjph12lPvVDvV5bwthUbBEI=;
 b=FZhgUCwUZX7igZi16yQODx8+KbkHGclBlDJjHYCZxM7KjufVHj1csQ1x5nU3ZRUFHy
 W6P9jDawE7Aci66askzFeHB+6ipqKGEIDPN2Ki1vkVD8jIZdzdVPPYWAaH9cUTuCQGcu
 mtMasHpUeWbSaJ5F7hZ/6NQ574mhrl4uqfRZE8El7uTMrRhF5gbGUZYwLU9a5kvxVE/L
 k4FbZTQzVozpd/OHSfrPOPT/2ZE3nmsKoaKh0pdcsjJFPZUbMDzqQKX+3+8VrIUAWPbz
 Dh2lV4z13F7IEOp8RrfBBB0mXD8VVMXOiUwDIV2Fvb8GQi4ZrkAH1gqu/gdbTfTKb/bR
 gbnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=XF7J+DG7tWV9RXyc1r5Ixjph12lPvVDvV5bwthUbBEI=;
 b=AlkEj8a0NyZL8QymPLiKV32GEXLOvtRkcI/gx0WwGbC1aABU7h0yEb5ISa7PNK88fr
 LkjWt+q3mHzB6g333FlFu3eY4AI6qAzaaLNd4VkjfuijaghqWdPtt08T0G1AVbgt5U+P
 G5CceUNvan4t3kwC1sB9LFRfAHvSylCGtNcuIzEI84uHZkXZMur/dnClMPl/Ppp9l2WP
 RruSeBNsG5yAS36/M/N32ak3cl6CPYVpCSZF8Wl8q1/DPvDaf12m/VTJU4Xha5Vwr5Qc
 G43XqbKYK2rLobJVgneOTDnlKb2z3H2HmKwxzcTZkiQinzPdvjsjeskkzi0PKdurgdyg
 7GZQ==
X-Gm-Message-State: APjAAAV9y6mnCqudI1a1WTdqM0rvht0878mzOO7HhT0yIP8UgFvTCp/+
 dFo3ljP4TDdmpbIwPS7AxPiHI0+E9zU=
X-Google-Smtp-Source: APXvYqy3vFTV9LTgmQjmmhjTc6kU9Rr4Y6pS3SE6yuds7uL1u/ShsusG3J537rgd9MSMTZj9mf8vxA==
X-Received: by 2002:adf:fd08:: with SMTP id e8mr1452202wrr.42.1572856373332;
 Mon, 04 Nov 2019 00:32:53 -0800 (PST)
Received: from [192.168.86.166] (83-86-89-107.cable.dynamic.v4.ziggo.nl.
 [83.86.89.107])
 by smtp.gmail.com with ESMTPSA id z13sm17303360wrm.64.2019.11.04.00.32.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 Nov 2019 00:32:52 -0800 (PST)
Subject: Re: ALSA: pcm: use dma_can_mmap() to check if a device supports
 dma_mmap_*
To: youling 257 <youling257@gmail.com>, Takashi Iwai <tiwai@suse.de>
References: <CAOzgRdYSaaF6OkXGME2=fn1dfTbpyt_GqEs=10oXH=V6SudfyA@mail.gmail.com>
 <s5himo0cbmm.wl-tiwai@suse.de>
 <CAOzgRdYTa-nAa7QV6c2aZs910BACg91vAjcjw4V-Oy8KCZVmmQ@mail.gmail.com>
From: Greg Kroah-Hartman <gregkh@google.com>
Message-ID: <60ee349a-1fe7-46f0-5161-1dcfcb6fbee9@google.com>
Date: Mon, 4 Nov 2019 09:32:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <CAOzgRdYTa-nAa7QV6c2aZs910BACg91vAjcjw4V-Oy8KCZVmmQ@mail.gmail.com>
Content-Language: en-US-large
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_003258_196706_F32CCDAE 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-xtensa@linux-xtensa.org, Michal Simek <monstr@monstr.eu>,
 Vladimir Murzin <vladimir.murzin@arm.com>, linux-parisc@vger.kernel.org,
 linux-sh@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
 Helge Deller <deller@gmx.de>, x86@kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-m68k@lists.linux-m68k.org, linuxppc-dev@lists.ozlabs.org, hch@lst.de,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/4/19 9:27 AM, youling 257 wrote:
 > This driver 
https://android.googlesource.com/kernel/common/+/refs/heads/android-mainline/drivers/usb/gadget/function/f_audio_source.c
 >

The driver is broken and needs to be fixed.  Please feel free to submit
patches to AOSP to do so as you can trigger this easily.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
