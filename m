Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 238E4FF589
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 Nov 2019 21:45:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+GO2eWDaFx5VCB+TqmyrfFS2X0z18SYrft0gC4I2eqw=; b=ZkKlSSwnvm53b/
	LkMFvmYUHfdTMo+E+OHzZzDIx/bQ519aRrDQswukaAhdYWaVbunM9nULTSKXVmdQmrGaxtFy2qmKV
	3L7++FNGr8P38OJY/Ft/eXV6adq6Wwwre7I6Vri3z4xEIGX4MW7EBvIPCVFU7j27S4xF/LE82RgLT
	iw4/ui4SriAlEyfo22tJUVzmghJBlXMWGNup7QuOLP7Nf+UeX+INUQSidJ3sg/3vblF2Z3U6uFNmh
	aOEJX32hAHJEGFD5JBth17xtBLT9Z4CzbvOt/2D/ysHu56Sgwbh4r00DD8+RMw5px9hk47BAe7Uuj
	7ZeebnP5lSXt5IMPPM6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW4x1-0006PY-Ii; Sat, 16 Nov 2019 20:45:47 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW4ws-0006Oe-13
 for linux-arm-kernel@lists.infradead.org; Sat, 16 Nov 2019 20:45:39 +0000
Received: by mail-ot1-x331.google.com with SMTP id r24so11077216otk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 16 Nov 2019 12:45:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2dZwnfQgOqTIKiwRnj4r9Zker73mZIhEC1hZOmrCLBY=;
 b=P2n5ewmAguqGNxt28KAgF0903BwywKKX71aXiOgk8/c0eldQ2jXd+vpyikAxMbFuwa
 cgkfCGt55N4UizeGQE740p+dLfFqfdvMTxR8RHHcY9B2xt9htdDU4c8Dan1gWbNj1K1j
 Q/78fhEUiImeG9rQ84yjekUFxTYhA5QfSQNDe7znRxL5wBVhdZEgLeo3vpJbpqPlZ0Yu
 VD2gAunlUhaLDpT65i+5Sx5ZVmbUNRXT9B29hH09QeA91wpG0f+RsdYtzZL+dZSCy6XV
 e06bX98qpXzWtB8hrOTk6z5yzcy4QqR0E7/mPnGv9s2FGHqwB8LRMVq4Aq64tRu5C77C
 TVIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2dZwnfQgOqTIKiwRnj4r9Zker73mZIhEC1hZOmrCLBY=;
 b=VQEtcIqid7VDN04wIF42b6q8NCyqC4Jau67Cw3IdixqPlfgoLLbjtP+wGgezpWkQ9f
 J5JRwuoT3UG8f7mdE8mF7W5NmQOugrOy41pfbc9rD5PYKsfwT9OpWJd/iyjm3TXf1ggB
 o31LhVZC1wp8YZLi+cQmIJNG05kR2UN5pPTnlbm2K5+lY4EstXnAOrBEtKG9QFAVPzAC
 rd1OAAZ8jtZx+CzJMacZXzcy1GDXtEXiyfKm7hxQPqOB9CXVDcco4UFmsW+2jEqjdRhA
 hnyoqFpqZ33dfAkGI7q0lA1uJM9mK2eIZDLkwNM25R3VC87xPMPvNZkEr0A4zqHMUE8L
 bp+A==
X-Gm-Message-State: APjAAAWZgOmvoRJQspq5DCldLTzsnsPEvGEWFe9+52JURUN5K3S3+lpy
 EVB6k+8dp4vkqUoKxDD3LygJny9mX6C86wB3W8A/MQ==
X-Google-Smtp-Source: APXvYqw/01RAS5kPKwQvBvbyIGf6pNqFTax9GSBdKiLyr9qfJ555nkMjEqS9rdk3Ii2GR4w3V4jwlChgzmNvsgnybsY=
X-Received: by 2002:a9d:30c8:: with SMTP id r8mr17204216otg.363.1573937133999; 
 Sat, 16 Nov 2019 12:45:33 -0800 (PST)
MIME-Version: 1.0
References: <20191004114330.104746-1-Jonathan.Cameron@huawei.com>
 <20191004114330.104746-2-Jonathan.Cameron@huawei.com>
 <CAPcyv4jZG-5s6NsS-_-oNG45y0Qb1mVD_s8cCGqLYtzvHqEo+Q@mail.gmail.com>
 <20191113094742.00000dc4@huawei.com>
 <77b6a6e8-9d44-1e1c-3bf0-a8d04833598d@intel.com>
 <20191113174845.000009d3@huawei.com>
 <CAPcyv4g5xUBp871+T26+se8WH9154g7V81qsToYAbXAALMuhKQ@mail.gmail.com>
 <20191114112504.00005b61@huawei.com>
In-Reply-To: <20191114112504.00005b61@huawei.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Sat, 16 Nov 2019 12:45:23 -0800
Message-ID: <CAPcyv4jrXvPOvoBCW8H42_og1wJ_t9_=5N4C7-OugYyNzdqBLA@mail.gmail.com>
Subject: Re: [PATCH V5 1/4] ACPI: Support Generic Initiator only domains
To: Jonathan Cameron <jonathan.cameron@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_124538_071703_9AA71206 
X-CRM114-Status: GOOD (  16.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:331 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux ACPI <linux-acpi@vger.kernel.org>, Tao Xu <tao3.xu@intel.com>,
 X86 ML <x86@kernel.org>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linuxarm <linuxarm@huawei.com>, Keith Busch <keith.busch@intel.com>,
 Linux MM <linux-mm@kvack.org>,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 14, 2019 at 3:27 AM Jonathan Cameron
<jonathan.cameron@huawei.com> wrote:
[..]
> Hi Dan,
>
> Agreed that it makes sense to expand how we describe these cases a bit.
> To make sure I've understood correctly let me paraphrase what you
> are proposing (and tweak it a bit ;)
>
> Assuming for this purpose we don't put GIs in CPU nodes as that makes
> for really fiddly explanation. In reality the code will need to handle
> that.
>
> 1) Leave access0 as it currently is with this series - so continue to
>    not distinguish between CPU nodes and Generic Initator containing ones?

Yes, but with the caveat that I think 2) also needs to be part of the
series before it goes upstream. I.e. don't regress the amount of
default information just because a generic initiator is present.

> 2) Add access 1 which is effectively access0 ignoring Generic Initiators?

Effectively yes, but I'd say it differently. Always display the access
class for the local initiator as defined by the HMAT as access0, but
also include the "local" cpu node.

> My feeling is that any existing users of access0 are definitely not going
> to be expecting generic initiators, so we might want to do this the other
> way around. access0 is only CPUs and memory, access1 is including
> generic initiators.  If there are no GIs don't expose access1 at all?

There are no consumers of the information that I know of, so I do not
see the risk of regression.

> For now we could simply block the GI visibility in access0 and deal
> with access1 as a separate series.  I suspect we will get push back
> as there are no known users of our new access1 so it may take a while
> to prove utility and get it accepted.

The problem is that HMAT gives an unequivocal answer for "local"
because it lists it in the table explicitly. Everything else is a
subjective determination from parsing the performance data and picking
a metric. If access0 is a GI, then let sysfs just reflect that truth.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
