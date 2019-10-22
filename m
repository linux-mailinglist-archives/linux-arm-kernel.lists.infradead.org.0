Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF8EE01BB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 12:12:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zts2bhIwH6N/rs1SMFWHmGhYkOwpMkTmRXjGtAjqUJg=; b=kVEiRir/VQ//yh
	csf1DWfiDhQE/3d7S+wrxcqnO8O0IeM+EXn+q1e+ApTDqknc6LRvdENXKt1gIHq5WRG31Gum9oJlu
	en927simYpmwIVzlB9hI+iIscwQPIs1ry/r5fYLI4EPJNPY/+j/3nP83Q1M5LifFrVq7d2TpwRjSS
	KCUTmb6VAA/OudWV5koqeTPSPHtiKIGL4LOsVEeNQb105flrHhKAT4xNfGtsN+SxnWI/cHxQM5z97
	xWr3VDZdzEMSsYZpfYxa2MtfH5d+e6B2hmzlW6FeJHSSDku+PL85FlYYS3Bj8rwBmyARv1CI0iV7V
	QG8tgX1Rbn3bbBvCRUZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMr9j-0001Vy-5x; Tue, 22 Oct 2019 10:12:47 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMr9V-0001UI-BH
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 10:12:39 +0000
Received: by mail-lj1-x244.google.com with SMTP id y3so16537030ljj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 03:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=hjSv+wwiORAZwQroV0MjPyGZjVfHuvomytZjWA/sFNI=;
 b=Ic0hqL5AEydTjmoYQ4tUn1uoaJcRLZ+2GEpJ1kQHS1/OR4c9etzeWrdKjwV8o1tcLD
 LPpA2VaMo3XUzapC0wtQpSC2SFXhaBgPzMavdDagC7dYu7RNq+FMhBB+Ew5Kwqtg4jPM
 juN3r0sW/bDp/bnW5U/eHm7+dlCaX6fr83uZE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hjSv+wwiORAZwQroV0MjPyGZjVfHuvomytZjWA/sFNI=;
 b=hU7znqTZrYF2I1tHisCb03Exmc8E4ScPAm3k/wOG8SF+kA5KB+gua16cPlA9y2dtq6
 xKGfZ4coraARuGy1XDfxELmy7Bi1/oNb9z+WZi+2DWwE0p+RaiFJgfX8c/uUO0tNa9I5
 TDz+R9Ji1/eb7fBTqnoeuHcgz1bTDATe8L/0wdpaB2/IYPlBbf+4WuIJxw0grNX0bb/z
 5W80glOImEegOlIDlfk6S/ZsTH49JhVBoDQJ4v7D4DmvvJrgDNK8bZ5bk/ZLwPYGxT6i
 eiL3w95VHeEs0cTFXiILH7GsA3utclr8oepQXX/wkmgFDJXfdecw6pfvQnOfFpo+wSX9
 6xmg==
X-Gm-Message-State: APjAAAUkg0mu1WzzvJ1oAd9DiNRxJNUfYW2nWxfiFCUBKs3UTOJpK/a1
 2twtYJL1/NF+Wn8MHwZoNGXZaQ==
X-Google-Smtp-Source: APXvYqytv4x9SX0QXXZ5y785ZosmmkK9pTamMTH5LXkfjr+9GoKrqEXh83aR0//s2xRSFOK5cvBzdQ==
X-Received: by 2002:a05:651c:1042:: with SMTP id
 x2mr18711751ljm.127.1571739150552; 
 Tue, 22 Oct 2019 03:12:30 -0700 (PDT)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id a7sm3846380ljn.4.2019.10.22.03.12.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 03:12:29 -0700 (PDT)
Subject: Re: [PATCH 0/7] towards QE support on ARM
To: Li Yang <leoyang.li@nxp.com>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <VE1PR04MB6687DA0268FAF03D3E77A23B8F6C0@VE1PR04MB6687.eurprd04.prod.outlook.com>
 <e02fa027-9c78-3272-d2d7-7ad2b0ed3ab0@rasmusvillemoes.dk>
 <CADRPPNREUK1SVxO4P5qb2COn+T04dtYgpVEzrveKUt16hBqAtQ@mail.gmail.com>
 <679bf33b-8c05-b77a-0cb2-d79dc5bfbe75@rasmusvillemoes.dk>
 <CADRPPNSiMUy77Dhxjg03sHDxyZzWf_BP8a5+fCncbynyO_cNGg@mail.gmail.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <a2bfec28-1e5c-f3f1-56e7-b11b4c23aabe@rasmusvillemoes.dk>
Date: Tue, 22 Oct 2019 12:12:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CADRPPNSiMUy77Dhxjg03sHDxyZzWf_BP8a5+fCncbynyO_cNGg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_031237_965037_ED363255 
X-CRM114-Status: GOOD (  21.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Timur Tabi <timur@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22/10/2019 00.11, Li Yang wrote:
> On Mon, Oct 21, 2019 at 3:46 AM Rasmus Villemoes
> <linux@rasmusvillemoes.dk> wrote:
>>

>>> Can you try the 4.14 branch from a newer LSDK release?  LS1021a should
>>> be supported platform on LSDK.  If it is broken, something is wrong.
>>
>> What newer release? LSDK-18.06-V4.14 is the latest -V4.14 tag at
>> https://github.com/qoriq-open-source/linux.git, and identical to the
> 
> That tree has been abandoned for a while, we probably should state
> that in the github.  The latest tree can be found at
> https://source.codeaurora.org/external/qoriq/qoriq-components/linux/

Ah. FYI, googling "LSDK" gives https://lsdk.github.io as one of the
first hits, and (apart from itself being a github url) that says on the
front page "Disaggregated components of LSDK are available in github.".
But yes, navigating to the Components tab and from there to lsdk linux
one does get directed at codeaurora.

>> In any case, we have zero interest in running an NXP kernel. Maybe I
>> should clarify what I meant by "based on commits from" above: We're
>> currently running a mainline 4.14 kernel on LS1021A, with a few patches
>> inspired from the NXP 4.1 branch applied on top - but also with some
>> manual fixes for e.g. the pvr_version_is() issue. Now we want to move
>> that to a 4.19-based kernel (so that it aligns with our MPC8309 platform).
> 
> We also provide 4.19 based kernel in the codeaurora repo.  I think it
> will be helpful to reuse patches there if you want to make your own
> tree.

Again, we don't want to run off an NXP kernel, we want to get the
necessary pieces upstream. For now, we have to live with a patched 4.19
kernel, but hopefully by the time we switch to 5.x (for some x >= 5) we
don't need to supply anything other than our own .dts and defconfig.

>> Yes, as I said, I wanted to try a fresh approach since Zhao
>> Qiang's patches seemed to be getting nowhere. Splitting the patches into
>> smaller pieces is definitely part of that - for example, the completely
>> trivial whitespace fix in patch 1 is to make sure the later coccinelle
>> generated patch is precisely that (i.e., a later respin can just rerun
>> the coccinelle script, with zero manual fixups). I also want to avoid
>> mixing the ppcism cleanups with other things (e.g. replacing some
>> of_get_property() by of_property_read_u32()). And the "testing on ARM"
>> part comes once I get to actually building on ARM. But there's not much
>> point doing all that unless there's some indication that this can be
>> applied to some tree that actually feeds into Linus', which is why I
>> started with a few trivial patches and precisely to start this discussion.
> 
> Right.  I'm really interested in getting this applied to my tree and
> make it upstream.  Zhao Qiang, can you help to review Rasmus's patches
> and comment?

Thanks, this is exactly what I was hoping for. Even just getting these
first rather trivial patches (in that they don't attempt to build for
ARM, or change functionality at all for PPC) merged for 5.5 would reduce
the amount of out-of-tree patches that we (and NXP for that matter)
would have to carry. I'll take the above as a go-ahead for me to try to
post more patches working towards enabling some of the QE drivers for ARM.

Rasmus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
