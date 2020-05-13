Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C54C81D1080
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 13:03:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MG89l6u0LKmaVP/IA/O3ZGIhMQMHHoPNJGM1xpmikog=; b=aaK2IvIy1EKXkE
	/9EueugyjCHHNWpDyjka9JpCFfHz+rjNparSQNozPPg5rna+myO6UXk96gnfdqV4z5Sfdfz/7vneY
	KJjgnNGBI9lOMIjAoal73aH7XnSkJZXy3o1DS4jn6ri6LvZWuB0afT0umBtEybgVCyoHH+1a4MZHG
	Asd7Y73X6pw957B2iarcXjS1S/3G5FZRi+BAb3zaz+Mb1zhsXvOzxc1XMgXMfo/ByFFU4xghMiUcR
	V7933He529TL/KzD3qjglBXFHEmdErYZdOf35iL8XBGDn00lQ/rkUFopfoEzL4efx75U79gRQGhQq
	Dfy8icT/GB8Y6ap9wyRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYpAm-0006Nm-KF; Wed, 13 May 2020 11:03:36 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYpAg-0006Ml-78
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 11:03:31 +0000
Received: by mail-wr1-x442.google.com with SMTP id 50so19810555wrc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 04:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Nh7DyJO+DcViOqeU3sNNSJYNP3Q1t6sUi1HzAPYYVu4=;
 b=XC7R3Z8D2P+2DjVhpBCDocDEHgLNV3dVkUCrmrki+JJqmjTbn/6Pz5XjCJYfmI9eDq
 n0hXdb5hqlm3kmJp8aL5CW2hBe28Ndr8jS5TAlMOc73gKJ61KGv6Tbmgy8hf7RCzj2tJ
 7CfJjPwYGl3jrTd/3h1lS2FDI+0dJr3DvcxiZz6idvQYQR5Lt6WbVOD8uag6anI7OqSh
 mVbIIa3ic/93ck98KrmshiOfl6uBhXSX+mRaev+DC+bRTZiqa9dwQVa5j+78gOXpx4hx
 m8NYDA8SKQJMyJkmqcuBpt/NAEmsgkEB0cn5naYstVDYLV5ZE99fPcPIM11I22e8F7Y0
 ju6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Nh7DyJO+DcViOqeU3sNNSJYNP3Q1t6sUi1HzAPYYVu4=;
 b=Wvm9y3WTPN9o9YO3G0DS7UUTCEuhPeEEO3Dh5waOOw/afubQ083Gx9KFwKldzrHGal
 lycj9QpGN4+ADD7QW3ZmKqipKZ2MuNORozY045Zmiu0lopU3bBUaAjzBd88gVjR4DV1H
 bN68nYCPjF1hr+U8b0GXfjmrrQviGSQgBbkxbK6ZJoh4MS7KevJPvVBNluzHDaBhmqlZ
 ecX/m+3wRy2STPMn/0j3syoNspfucatAUxrbkAVH9Fp1m+7e/w+QuffbjUQUJBSnfMRa
 KAjNFMLovR+E5Cp6DGS6z5+XpDg7C+dZ17x3tbk7XF9RD8vwNM5FQX4XNw1/twaCDc28
 pOBg==
X-Gm-Message-State: AGi0PuZAplbwGKN/aR9BZU4n5E29RnnWLonGRS8Rzw/SN3g6QNyMke1I
 7lO6J0RfwACGDRSx2RzMa7anuZFO
X-Google-Smtp-Source: APiQypLtpJHo8ffwbbRkV/avsRbKUL1xHjzoj2MxEP2X+KQPOSe2utWuS8fB9xpuBPcH+EAxWl8lEw==
X-Received: by 2002:adf:a74b:: with SMTP id e11mr28414461wrd.99.1589367808517; 
 Wed, 13 May 2020 04:03:28 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5?
 ([2001:a61:2482:101:a081:4793:30bf:f3d5])
 by smtp.gmail.com with ESMTPSA id s2sm4208877wme.33.2020.05.13.04.03.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 04:03:28 -0700 (PDT)
Subject: Re: [PATCH 04/14] prctl.2: srcfix add comments for navigation
To: Dave Martin <Dave.Martin@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
 <1589301419-24459-5-git-send-email-Dave.Martin@arm.com>
 <8b882b6e-376b-111d-3c3c-7a042b0e91b5@gmail.com>
 <20200513105620.GE21779@arm.com>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9770249d-0d5a-1b02-4de1-bbb6343b5829@gmail.com>
Date: Wed, 13 May 2020 13:03:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200513105620.GE21779@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_040330_258245_C2236892 
X-CRM114-Status: GOOD (  23.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mtk.manpages[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 mtk.manpages@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave,

On 5/13/20 12:56 PM, Dave Martin wrote:
> On Wed, May 13, 2020 at 12:09:27PM +0200, Michael Kerrisk (man-pages) wrote:
>> Hi Dave,
>>
>> On 5/12/20 6:36 PM, Dave Martin wrote:
>>> The prctl.2 source is unnecessarily hard to navigate, not least
>>> because prctl option flags are traditionally named PR_* and so look
>>> just like prctl names.
>>>
>>> For each actual prctl, add a comment of the form
>>>
>>> 	.\" prctl PR_FOO
>>>
>>> to make it move obvious where each top-level prctl starts.
>>>
>>> Of course, we could add some clever macros, but let's not confuse
>>> dumb parsers.
>>
>> A patch like this, which makes sweeping changes across the page,
>> should be best placed at the end of a series, I think.
>> The reason is that if I fail to apply this patch (and I am a
>> little dubious about it), then probably the rest of the patches
>> in the series won't apply. (Furthermore, it also forced me to
>> apply patch 02 already, which I wanted to reflect on a little.)
> 
> Agreed, I'll try to do that in future.
> 
>> That said, I'll apply it, so that the remaining patches
>> apply cleanly. I'll consider later whether to keep this
>> change. For example, I wonder if a visually distinctive 
>> source line that is always the same would be better than
>> these comments that repeat the PR_* names. For example, 
>> something like
>>
>> .\" ==========================
>>
>> I'll circle back to this later.
> 
> I'd prefer to keep the name if we can, since navigating by search is
> otherwise bothersome due to false hits.
> 
> Could we do both, say:
> 
> .\" === PR_FOO ===

Okay -- I'll give that some thought.

> If you prefer to reject this patch, I'm happy to rebase and repost the
> series as appropriate.
> 
> In any case, this one is nice to have rather than essential.

For now, the patch is already committed and pushed.

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
