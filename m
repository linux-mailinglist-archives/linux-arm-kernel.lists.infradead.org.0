Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 732231442DD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 18:11:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AON6fJd39Sk+MLvdqIaosPjD70Dnehl8TyGh6BRIQjw=; b=XFJARDfMxt1HPO
	x5QxeFZoiHWDin0+zWOQO8Snd7hk/aBhPTQltL/NNNwKis2nH7RV7ryLL5W0Sh1967bn5g+FSzpto
	mzovFV1pbvAxmZgOU9Guwbb/JIcSdHNQnhw6axCC+r11A+qtGxkPmexpEbuAk5IcM7HgM3CK/kHrK
	l9IYT4z6Jq7wA0JNuIdKstyUTICxK8HI7EBYg8Q6c4ROcOYnKbinZjc03m6G8IhyB2jE70NOvrtoy
	tvM9yynuAAiOE2ENBQPy+Oxm8NDIi/aR1qb49hFivLTjS6Qw8f8kgVR0BTmQsFQPkChfoGkKUG1JT
	AGJs7bSTQ2iT4ZuPheKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itx3l-0006ZQ-S1; Tue, 21 Jan 2020 17:11:25 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itx3Z-0006Vf-Ms
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 17:11:18 +0000
Received: by mail-wr1-x444.google.com with SMTP id z3so4150482wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 09:11:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZGs+4DUJDSvBqJ//fVqMbttGqRoxAKV0f+ErvAbm5L8=;
 b=EBsH58uX53UDW9/nRW8udKKKe06jKEr+n8gx6G9QSL2/NkKdjeoB1bVKUP6O/x3ouq
 cTuUJxlAHY5gB1+bQaH0jRnZtsfVFtunbtbfIspa/qvNnhkdCnLlq/zmIMUQN05k1DDG
 q+2M++veTbrYCoMSPp8GUjGatjIR2yq4peoPTH1U3X1y5nbegNcANqKY37WwRQM90+6M
 xu2TVvJo6hrsAneOloOPEw01LAQk3lB+2RXhKTeZmVGrV5j7dNi+GjcilaACOkvK+ac9
 SheTyjSLBZEoulkJdX9aGjip+T9fcLoaOtpf1XiEsfb9T0+56H8sqtuUxEdhNfUO8TmB
 kACQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZGs+4DUJDSvBqJ//fVqMbttGqRoxAKV0f+ErvAbm5L8=;
 b=WzS7cT3qHnfreVM65/2clfJY+lguKeasiCwGi0h9/XH1ek3bSpgBxufcvlj0M25RNJ
 /itz7Y1PaFj1poLurqzgBNFNPBp0XdxSA4Ssuyg6EasmGV1oCUKnysY+saEEIUgWFR35
 tiE0ApxYgDeOiE1rlHykLvcDlfBLvmzm2ijus10bx4o2qvLs8Mcy1dHga/khkmFJYX/V
 h9rDvFYbxzRqMK2s8jnmXhdD6vVUiSxbP11MRW7qBg1dEghdQErd1xVbT196eofV/rGQ
 vTBrSZHUrjPAp26YQ2TUn5KDOVABaLj1Af0a0BzTQe9s06zDfmXZgeX1+QKaV0X7kaZr
 sj3Q==
X-Gm-Message-State: APjAAAU+F8OhPLvTD0oEem21Ni+Qtp2mL+imAPVfR5yiPL1W4OugZHLz
 rcy2xFR6vjicMuUtr1Iiu2Nq4UnmpZ1UnjoQ
X-Google-Smtp-Source: APXvYqxOw+/RCexAIK0/PEftnp59kp31SffdYzOIBv9fhO0Pd8QkKlcd4t1De7O+sOSBJ2kmnvIsaQ==
X-Received: by 2002:a5d:5491:: with SMTP id h17mr6324330wrv.374.1579626671678; 
 Tue, 21 Jan 2020 09:11:11 -0800 (PST)
Received: from cheddar.halon.org.uk (cheddar.halon.org.uk. [93.93.131.118])
 by smtp.gmail.com with ESMTPSA id z83sm33634wmg.2.2020.01.21.09.11.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 Jan 2020 09:11:11 -0800 (PST)
Received: from bsmtp by cheddar.halon.org.uk with local-bsmtp (Exim 4.89)
 (envelope-from <steve.mcintyre@linaro.org>)
 id 1itx3W-000263-Qo; Tue, 21 Jan 2020 17:11:10 +0000
Received: from steve by tack.einval.org with local (Exim 4.92)
 (envelope-from <steve.mcintyre@linaro.org>)
 id 1itx3I-0001fB-Ld; Tue, 21 Jan 2020 17:10:56 +0000
Date: Tue, 21 Jan 2020 17:10:56 +0000
From: Steve McIntyre <steve.mcintyre@linaro.org>
To: Frank Rowand <frowand.list@gmail.com>
Subject: Re: [RFC PATCH 0/3] Add device tree build information
Message-ID: <20200121171048.GF6796@tack.einval.com>
References: <20200113181625.3130-1-alexandre.torgue@st.com>
 <f21ad44d-f119-2035-b4ee-16b3619879af@gmail.com>
 <233e0a5f-d38f-908c-5ca7-66ee87d0fcae@st.com>
 <7cfd0bc0-13fd-98ea-9bfd-6cfbbfd77b6d@gmail.com>
 <220e3aea-b273-417a-69c9-059236c888af@st.com>
 <a1233cd8-e73a-82d7-74bf-69109d1a0a07@gmail.com>
 <20200120182837.GO3697@linaro.org>
 <f09ce50c-6721-c9d3-4f27-3f98a2d0b183@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f09ce50c-6721-c9d3-4f27-3f98a2d0b183@gmail.com>
X-attached: none
User-Agent: Mutt/1.10.1 (2018-07-13)
X-wibble: sender_address steve.mcintyre@linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_091113_779754_20B40CC1 
X-CRM114-Status: GOOD (  14.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Michal Marek <michal.lkml@markovi.net>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kbuild@vger.kernel.org,
 Masahiro Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org, sjg@chromium.org,
 devicetree-compiler@vger.kernel.org, david@gibson.dropbear.id.au
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[ Adding lakml to the CC list ]

On Mon, Jan 20, 2020 at 09:20:55PM -0600, Frank Rowand wrote:
>On 1/20/20 12:28 PM, Steve McIntyre wrote:
>> On Mon, Jan 20, 2020 at 10:14:22AM -0600, Frank Rowand wrote:
>>> On 1/20/20 4:56 AM, Alexandre Torgue wrote:
>>>
>>> Here is an example of the info from one of my builds:
>>>
>>>   From Linux 5.5.0-rc2-dirty by frowand the Mon Jan 20 09:50:58 CST 2020.
>>>
>>> The information 'Linux 5.5.0-rc2-dirty' is precisely what was most objected
>>> to in my proposal.
>> 
>> ACK. :-( I'm surprised to see so much push-back on what looks like a
>> simple piece of information here.
>
>Me too.

So, looking at the comments back on the old thread...

Alexandre is proposing somthing slightly different here: a patch to
add a simple string to allow for a description of where the DTB came
from. The particular example he uses here fills in build details from
the Linux repo, but it could just as easily be filled in as part of a
U-Boot build, or the build of a DTB included with EDK2, or whatever
other firmware might include it. It might be useful to also add
similar debug output into U-Boot, or for that matter any other
DT-using project.

As Rob says later, it's simply information for humans to help identify
where a DTB came from. Nothing more.

>> I've had users *specifically* asking for this kind of identification
>> so that they can verify the version of the DTB they're using at
>> runtime. Right now it can be a guessing game, which does not help
>> people trying to debug problems.
>
>If the information was reported as debug information via pr_debug(),
>would that work for your use case?  Or would the users' kernels
>not have debug enabled in the configuration?

Quite possibly not - I'm not 100% sure to be honest. :-/

-- 
Steve McIntyre                                steve.mcintyre@linaro.org
<http://www.linaro.org/> Linaro.org | Open source software for ARM SoCs


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
