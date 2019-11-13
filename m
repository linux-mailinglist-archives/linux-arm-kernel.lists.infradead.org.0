Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3EBBFAAF0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 08:27:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ppWd4fLPl/mz8yj2ts6itGpcV7FiQlTHJQUt0YyeVrc=; b=qCh87LCNvExfVZ
	bYo9tVGMq/vES1dFkTmF4vj1/jyLYUJcsa2344/C+hLjo/2uY5JD/PlmQCJZZvvLgTjXN4Ohp3LKh
	7dbTR930JYzwqWZD9/+IfeCI+nCKJPlNGSTf4yn3N+RkJptVLf7KesGtlR/Z0PF+RENTcZQia0fyx
	SoGsezyYsqQ8d+joolyq6IkQqldvVIoMyP+cNjO1UjoPZ0irj3QFzTZSISqv+w+jA2x2zYKuBnDzg
	xCPdF09fI5WtcSIcWH5qyC7pwASA8P0lXiWXujLJsl5633y5mWuqNg0NnAHWWrvC4hGCN4wpIEd96
	9nVyHoSdB0LK5XuN3H5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUn3o-0004pH-4g; Wed, 13 Nov 2019 07:27:28 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUn3P-0004f5-1Q
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 07:27:05 +0000
Received: by mail-lf1-x141.google.com with SMTP id b20so1070653lfp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 23:27:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=yDdws34Rq5JH8sQUN0hdqQY10XjPq06N8OEfJVtJ98w=;
 b=infkLwQ4ols/YljFrq0q1EHDCTxYJ9I6JW1B0gxtlldWOg+TTabbxbwjRBtaQx+wQK
 WgBpqpmqIY9DCHqrgHhKGWBPwnCfKNIVeo+5v4472CqqXWDGbGJ3UTn3X2r1Tynkubkm
 V6o1wD5j1C3CiafXqbCSeWYKylOFg+1sPKmz8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yDdws34Rq5JH8sQUN0hdqQY10XjPq06N8OEfJVtJ98w=;
 b=OW4uCZF/9RZ0uol/UYRFyLCYWz83h2I+c3fkK3qdWMl7fj4leFUyi1nAXPE+jqL+FZ
 LJzvbNnYunrjxEC6IJ0uoYvWHY9ubixntO8XHKPueb3T6yd4RqhXHHDeVg1S+ugys33D
 i0Oog9/h+wrZ7ApzM3uMUu23qefPliv7xiGG21Lxrsd+kTnKsFBjvyTqlAAVXX/jXTtq
 2FOTr8EW/D7NqBoFrp9Lo/Kty1jIybCa2CntHzMpBo9Ex0qy7ekTTsLdT/axILR6mUm7
 N9DlpSvfQiD2dHLmgaVVgrpABSfCpyPAU2HiwzrFTY/NpPrIedTrhpLPiM3Bdr1VtjzR
 nuow==
X-Gm-Message-State: APjAAAV1P4jfxzSs7m3djCx77EdJDbZHni1LuM/FGURCY1BxD6Ix8PGe
 h8dDMeuOMtfo4vdw4wZwUWYxNQ==
X-Google-Smtp-Source: APXvYqzFLTMfk5U2wuTAqB0pvxbh8egdOKI3L4BeWtTxYDFWuldchErNN4wBbpobHrBl+QXZvWrohg==
X-Received: by 2002:a19:41d7:: with SMTP id o206mr1526891lfa.188.1573630016296; 
 Tue, 12 Nov 2019 23:26:56 -0800 (PST)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id 7sm553587lfr.70.2019.11.12.23.26.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 Nov 2019 23:26:55 -0800 (PST)
Subject: Re: [PATCH v4 00/47] QUICC Engine support on ARM and ARM64
To: Li Yang <leoyang.li@nxp.com>, David Miller <davem@davemloft.net>,
 Scott Wood <oss@buserror.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Timur Tabi <timur@kernel.org>, Qiang Zhao <qiang.zhao@nxp.com>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
 <CADRPPNSeEvFnVzGeZW6RPo_LP8mq14G2ZmmDAuwNdC3hT8Ekcg@mail.gmail.com>
 <CADRPPNQFiPMvRcSkVgM8p2_AxhqBOVFus=cX5UC-8NYYUvf+0A@mail.gmail.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <3d6abdfd-b180-d382-ff8c-9777cab21e70@rasmusvillemoes.dk>
Date: Wed, 13 Nov 2019 08:26:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CADRPPNQFiPMvRcSkVgM8p2_AxhqBOVFus=cX5UC-8NYYUvf+0A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_232703_254585_01D03DF5 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 lkml <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/11/2019 21.45, Li Yang wrote:
> On Mon, Nov 11, 2019 at 5:39 PM Li Yang <leoyang.li@nxp.com> wrote:
>>
>> On Fri, Nov 8, 2019 at 7:05 AM Rasmus Villemoes
>> <linux@rasmusvillemoes.dk> wrote:
>>>
>>
>> I'm generally ok with these enhencements and cleanups.  But as the
>> whole patch series touched multiple subsystems, I would like to
>> collect the Acked-by from Scott, Greg and David if we want the whole
>> series to go through the fsl/soc tree.
> 
> Rasmus,
> 
> Since the patches also touched net and serial subsystem.  Can you also
> repost these patches(maybe just related ones) onto netdev and
> linux-serial mailing list?

They were sent to those lists already. For example, according to
<https://lore.kernel.org/lkml/20191108130123.6839-29-linux@rasmusvillemoes.dk/>,
the recipients for 28/47 were

To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
	Christophe Leroy <christophe.leroy@c-s.fr>
Cc: linuxppc-dev@lists.ozlabs.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-serial@vger.kernel.org

same for 29-33, and 43-46 was cc'ed to netdev@.

Rasmus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
