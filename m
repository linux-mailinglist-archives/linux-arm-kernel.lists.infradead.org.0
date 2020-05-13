Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7BE1D11BD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 13:48:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o0syBydJrlCv/7TjJISL14VCQe52NfLgcoYFTLqwSXU=; b=hYnxJqKLlazIz3
	XoK59QnRxbDlexa4B9W7X0g9nFTs8KdYRNOnfFZsnBJkn0/y9+Pcs43c8ZxzIvHTY0pIgW6zEHyPw
	HsGSKgaKewcm9B29rnm9Z4OxxkPQclrj4YsLzcEmxBK08bU++7S/o39dX8a9A9gI2He7PO0xC2tP3
	GVjpUyEPUwvgt369SGfl3KOA/Prff+u+KiFyX62d/O5tY2S/+5GQI66P4chhn7XnPyGZi9vAhcUK1
	bXk1R16so/xtE3uRsXMGBX7f2C82nw/TnYcLUQv24QZHzaOF4AhbIgVednIi11UDdAAwK+wmf3vOl
	oidgzqzIwPD2Zc2DRepg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYpsX-0004ry-Dl; Wed, 13 May 2020 11:48:49 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYpsN-0004r7-4l
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 11:48:40 +0000
Received: by mail-wm1-x341.google.com with SMTP id w19so13369935wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 04:48:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=QVYIjnNVmi9zPZuwG6rsdSUCwiZb6REzOrsdfVzUiHw=;
 b=nlyeJmzBlL//a3eDINJ+hj3Nog0mKfTkxziV9cdUM7mTlfuP3HEJ4fJiAM1t3jsed8
 ROfDfuzcI5wWbEucUavHVkZgBy3yde7QKeqbMj0XMb8Ubhh2Lxp8nFF+3jqRvbjGdQvF
 vMDvt3av3+mTyX4Qaz33vmnxtFwOTR9QEWBpqHW9nuYzq/uFyL8zBtvqIY2e9ta1Ebtd
 jnRWNDRNeMBROsLeN42B8gRvmTOJWsifyan5/m14+hB7RJFmmv0F+TvtISU8yhsCcbR1
 3B+hE09m+d4HVTHPHbUZp+L1miJv4ux1IE+ah/aGsgFuqXU4LQVIbsQNuwQ4h/R3m4MG
 78wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QVYIjnNVmi9zPZuwG6rsdSUCwiZb6REzOrsdfVzUiHw=;
 b=Wx50Jw4ma9Pn+W0GVHLq1PEqVIkjClK/yjSbITuNDolVWKbRh71gDhfFyzvmM1Mr1W
 x1YD0Z6B5Mot9mF1Ab/egj0k6IR3fBWQ8gtFHr+3pw+rMK1Pr6tsUF9bK/V6P41u8Rht
 Nr68NtWdfSDHdOaF8QVIFOu8aBjYYugzZ4hB3oK8DUtm+5zNfyGx1YaU30zGKjBUBhjQ
 /97wySPTGHFdPuai7xsvTG3Io8zePw8tb5nx/aSeRDs4nlXd+z0NTkc9CgeHlTWGk1mh
 6+vlqXOCmCRjOc9Ongh63vaknhGewHCaRIltXhaqesLbIa2jW6rjtgR9brDT8RVgOAP/
 CAwg==
X-Gm-Message-State: AGi0PuaCTXrj7r/DkAKzc+p4ABHgP+BWaUYnce4HmBfzsiE4IJ2wEpC9
 9Cct4huxvWyS8a1QGYnZGD5BDlGQ
X-Google-Smtp-Source: APiQypJd0LcYv5I01IBUf5v6/5hJSjufh16rTh3JyT2BlAXn4Cfuyn3Zhnpw085vM50ZFoXnJ/pB3Q==
X-Received: by 2002:a1c:4d17:: with SMTP id o23mr11130120wmh.87.1589370517642; 
 Wed, 13 May 2020 04:48:37 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5?
 ([2001:a61:2482:101:a081:4793:30bf:f3d5])
 by smtp.gmail.com with ESMTPSA id w15sm26026533wrl.73.2020.05.13.04.48.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 04:48:37 -0700 (PDT)
Subject: Re: [PATCH 04/14] prctl.2: srcfix add comments for navigation
To: Dave Martin <Dave.Martin@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
 <1589301419-24459-5-git-send-email-Dave.Martin@arm.com>
 <8b882b6e-376b-111d-3c3c-7a042b0e91b5@gmail.com>
 <20200513105620.GE21779@arm.com>
 <9770249d-0d5a-1b02-4de1-bbb6343b5829@gmail.com>
 <20200513111557.GG21779@arm.com>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <022b1d7f-8381-a9a8-b5aa-907143fd4831@gmail.com>
Date: Wed, 13 May 2020 13:48:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200513111557.GG21779@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_044839_208938_E5F83F59 
X-CRM114-Status: GOOD (  20.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

On 5/13/20 1:15 PM, Dave Martin wrote:
> On Wed, May 13, 2020 at 01:03:27PM +0200, Michael Kerrisk (man-pages) wrote:
>> Hi Dave,
>>
>> On 5/13/20 12:56 PM, Dave Martin wrote:
>>> On Wed, May 13, 2020 at 12:09:27PM +0200, Michael Kerrisk (man-pages) wrote:
>>>> Hi Dave,
>>>>
>>>> On 5/12/20 6:36 PM, Dave Martin wrote:
>>>>> The prctl.2 source is unnecessarily hard to navigate, not least
>>>>> because prctl option flags are traditionally named PR_* and so look
>>>>> just like prctl names.
>>>>>
>>>>> For each actual prctl, add a comment of the form
>>>>>
>>>>> 	.\" prctl PR_FOO
>>>>>
>>>>> to make it move obvious where each top-level prctl starts.
>>>>>
>>>>> Of course, we could add some clever macros, but let's not confuse
>>>>> dumb parsers.
>>>>
>>>> A patch like this, which makes sweeping changes across the page,
>>>> should be best placed at the end of a series, I think.
>>>> The reason is that if I fail to apply this patch (and I am a
>>>> little dubious about it), then probably the rest of the patches
>>>> in the series won't apply. (Furthermore, it also forced me to
>>>> apply patch 02 already, which I wanted to reflect on a little.)
>>>
>>> Agreed, I'll try to do that in future.
>>>
>>>> That said, I'll apply it, so that the remaining patches
>>>> apply cleanly. I'll consider later whether to keep this
>>>> change. For example, I wonder if a visually distinctive 
>>>> source line that is always the same would be better than
>>>> these comments that repeat the PR_* names. For example, 
>>>> something like
>>>>
>>>> .\" ==========================
>>>>
>>>> I'll circle back to this later.
>>>
>>> I'd prefer to keep the name if we can, since navigating by search is
>>> otherwise bothersome due to false hits.
>>>
>>> Could we do both, say:
>>>
>>> .\" === PR_FOO ===
>>
>> Okay -- I'll give that some thought.
>>
>>> If you prefer to reject this patch, I'm happy to rebase and repost the
>>> series as appropriate.
>>>
>>> In any case, this one is nice to have rather than essential.
>>
>> For now, the patch is already committed and pushed.
> 
> OK, thanks.  I'm happy to write a further patch when you've decided what
> to do, if it saves you work.

Let's leave this for the moment. Once the dust settles on your 
remaining patches, I'll try to remember to circle back on this.

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
