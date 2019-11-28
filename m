Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1072710CDB1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 18:20:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NorDWlf5kFScZ8vXbwBxzoVTO2sUgQI8xusP+KU59oo=; b=NwEcKt0cpVyHys
	bGtvQ7E5LOUfXpAbijdmsUpK7xuSuk6zzQgu0729B9y1PFTcUz1+zc9G99CMQonly9NcQZvpwMPGl
	dQxRWkd/Kw6KFzMkdeQpUKrL+Hvd6I8+Mev9BdsxxLKvO7iaoAwVd4AV2zLL5jVZKMmN98vcNLbEd
	AyXhSMDwLDVwpKIIrvVrxkPyo1Ax+DuG4VcnzQDYEJweVaTk0rVnAVGCqEa0bJG6uNJQxnhsXzfMz
	L2NtOClgsoFOkBZgo/whhQSv0Xm5ayKv1mm0gh+/dUyHHjW9qoI5b/FUxY9P16ZC0efepTBw5ZkhW
	mT0RTyI20bi242aUjemA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaNSy-00043m-S2; Thu, 28 Nov 2019 17:20:32 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaNSq-00042u-Uo
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 17:20:26 +0000
Received: by mail-il1-x141.google.com with SMTP id z12so15346172iln.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 09:20:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Oie0bM178aUOxU4BJOrM9kVBDCA95ZD+DTy+5sq9Vkc=;
 b=LwTDbZMB0t4gpW9EXlsp+SpAcTpbl1AAAb4/Uv/C4t6EVxVHJDWskW/H8szBJDaATo
 n8D2pQGGDxYIavNp3NLeTPxj5vnm0wA+KuP+F8YPzz43s2WIKoNDHql0iYXMvtvb2F2z
 vNLeQOWcJAlWRwc4gK2yAhU5vo3b9nNP8RHyQHLA6/6iFsAU6JK/rQihBbPpWKz290Bj
 QxFWH/d5/U0cyPmTFwk3xWTCy6IPKdOer3iMR4zd2yzIXxPs+zClJ73phSMiv/KY92YB
 jhtn9/nWswqhvz8mF9w4yuws1mwo3cXVvt7gtZ0ZveJDLB/qKHMY8ITV0ooVN3XZuupr
 lZuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Oie0bM178aUOxU4BJOrM9kVBDCA95ZD+DTy+5sq9Vkc=;
 b=VASKmypMCjDD35+6zmGttqbsYBCaEkhkzTAgGcLeFvg+FLFgT9SAKOWHpaveMzJTAK
 vvXTen6Tjsi6AR4hTylES8oBBKyUdbdBHUaNOF6cPkAtqI8KeHSPFLaMep6kOQmltig5
 Fx62bRJzTb5lP4IjNZL20WxV/foqKONlJpu92tx5HH1t+myK8bfI4d8dbl8c8RaRikCV
 1fU12uFs2GdquhJAvW0UsMgAEsWruG5Psh4zuPC56K3Ir1fqcry1wQOCK2TGT3HWkvBA
 Gw3eM98/OXX4aCqz3OtNpqJOTEhbeFhEKFU7OZWnXnHmmyertoXLPewSgyATO5msNGT0
 IjLg==
X-Gm-Message-State: APjAAAVfG8hRqGTYjj5Co1x2s+mbQ6KCc7zj2AE9geG67O6n9pPnGsIw
 Gv8lKiOnqXj/b24vwH+8RpFlfJqqeO+I7B2wadBJv+sV
X-Google-Smtp-Source: APXvYqwtBfdFeO0UfXhQ4uWy57Am43xaNg5zXNDfE01bsarG3c196FurVM4CPTCCwBIxN4josf68OMIMNTX395okYPE=
X-Received: by 2002:a92:1547:: with SMTP id v68mr8134548ilk.58.1574961621511; 
 Thu, 28 Nov 2019 09:20:21 -0800 (PST)
MIME-Version: 1.0
References: <20191119231912.12768-1-mike.leach@linaro.org>
 <20191119231912.12768-4-mike.leach@linaro.org>
 <cc0eb144-48a2-bde5-4790-2fd5e1168360@arm.com>
In-Reply-To: <cc0eb144-48a2-bde5-4790-2fd5e1168360@arm.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 28 Nov 2019 10:20:10 -0700
Message-ID: <CANLsYkzsn6UWjjXLDSx+2hbXV26Qf-6FMqE7xURPgPzxOYpVbw@mail.gmail.com>
Subject: Re: [PATCH v5 03/14] coresight: cti: Add sysfs access to program
 function regs
To: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_092024_996834_7FD2C1E3 
X-CRM114-Status: GOOD (  15.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Coresight ML <coresight@lists.linaro.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 28 Nov 2019 at 03:54, Suzuki Kuruppassery Poulose
<suzuki.poulose@arm.com> wrote:
>
> On 19/11/2019 23:19, Mike Leach wrote:
> > Adds in sysfs programming support for the CTI function register sets.
> > Allows direct manipulation of channel / trigger association registers.
> >
> > Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > Signed-off-by: Mike Leach <mike.leach@linaro.org>
>
>
> > +/*
> > + * #define CTI_DEBUG_INTEGRATION_CTRL to enable the access to the integration
> > + * control registers. Normally only used to investigate connection data.
> > + */
>
> On a second thought, I have some comments on this symbol.
>
> Given that the integration control registers may be useful for people to
> find the device connections, I strongly feel that this is provided
> via a CONFIG symbol rather than a  debug symbol within the code.

Device connections can be discovered with the dynamic sysfs connection
entries added as part of patch 09.  In cases where that is not
sufficient and people really need to use the integration control
registers they are probably instrumenting the code anyway.

>
> i.e, CONFIG_CTI_DEBUG_INTEGRATION_CTRL, to help the people better.
> Codewise this doesn't make much difference, but it certainly makes
> it more easier for people to use it.

I agree that code-wise it doesn't make much difference but I'm really
not convinced it makes the driver easier to use, and one needs to
recompile their kernel for production systems anyway.

Thanks,
Mathieu

>
> We have used debug symbols elsewhere in the drivers for pure functional
> debugging purposes. However I feel this is case is superior.
>
>
> Cheers
> Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
