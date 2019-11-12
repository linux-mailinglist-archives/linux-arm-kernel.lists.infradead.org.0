Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7A0F97C1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 18:55:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gahUNK5hyB0AObCd7fES7jmWMzbOACeVzOtmyhsNzOI=; b=NfKsltJf2nrIGS
	M46eMpoS0y2/F2VWkO6oUf5l7K8bsB/A7VGcrzGwzw3Lmbt3ZE1ttna0782ujz5GSbCSAs9jhd1nU
	K1flLDnn/fF97zrPRlKcvr1ctBZqMB9ZoW/u4MFVBbzCycVveo//YnoDd7ZlH66FIIau7vdqbdniV
	W2I2m9PPmRrUDe5+yqNBEQ0m0moS95AvYMx+UPMP39KFABezdrp8X2pOpG4s8eAYk2bomMLcG9tru
	DykZuAJmsr+q4P+JBrmA+RWtRAbL7OG3Bp5GbaPb7Y5vup3O08k0N25/y4JcrWqte4V1+/qrn/Jlm
	KkVqLtca+JL9WtTWXTVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUaOE-0001HY-DP; Tue, 12 Nov 2019 17:55:42 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUaO1-0001Gp-Px
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 17:55:31 +0000
Received: by mail-ot1-x343.google.com with SMTP id u13so15103357ote.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 09:55:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tCv2FQBw3uAaqPVc/dzQiuHcwn8UohPz3qZnrpSfyuQ=;
 b=C+ntd6G4tkppkODd3gwiKjTQhhK2l2MZf3wR6Ptp0PyuFytkzu6QfE584Sbbdf/D3C
 yEeUylkvPlmS2sqFDsYOJ6hojpwGhB/SwDLTgTptnW6SPofVq6cI8TYWq0TFz3/Gf5KZ
 Dmh4JNcd33JvDQL7r5MsR4qfWI/O+roq5EeK93V+zBhhxZhgcoBPokBVtbsie8dhqURP
 6rgFDIsdc0JuIGcv+vBuYng3/8q75nmwIVr85qIvJArIFkCh6iZzr+70xHsWDLyqlg/e
 KsvIrL37fUeH9X3hcGFQcN7V8aimc7HVOeNG6PF5EqdnJg3zvHFXVqOgQdJIaPrr6Ptl
 Up3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tCv2FQBw3uAaqPVc/dzQiuHcwn8UohPz3qZnrpSfyuQ=;
 b=cTd2VQgZ8b8e6zhZySoAVkCm5DnZ6bB5E5bocuJOkhKuQjMEMgQPYzAvfQJeiPIBMk
 /4Zgh9OCFEbgTaA4/fg7cM0YQt02uE4pYSwPD71RxQO94fLTu7tUmesFNDWRLA9cxncs
 BcbaMoTNoVpbnrGioyYXVf2iada1DaCLZDDiGc7ARyhnNpFRjw3RPZcxw1Icy/D7yEEn
 YK5WU5VqAOQIc8PomioYDzUWT5gjQvoMsv5wgmO86FkNRu9DCMOQaVD3wIg1WGI0I6NO
 OtBKK1zLcJSfxznltYMHNjhpLtn51kz90/znVvnVOtublDFVuM9dyMlsyPu6juyhKI0W
 eWDA==
X-Gm-Message-State: APjAAAWAmfkN0DKXoja/TRS/iKM6vR4ZOSw5QCk52/mCkS7VVCwqfZ+j
 SOlTF9izJISHzDD8j/uudXfHYKs+K13sEP0ghmcRXw==
X-Google-Smtp-Source: APXvYqzejJzlhvFyHrEWCARW40GL40VL1ngc5hPC/CkFTIvPmZvq8BBGIVD/77UhBUvFLaBGC0UJsY82ebD4LRLlsDI=
X-Received: by 2002:a05:6830:1b70:: with SMTP id
 d16mr13052039ote.71.1573581328478; 
 Tue, 12 Nov 2019 09:55:28 -0800 (PST)
MIME-Version: 1.0
References: <20191004114330.104746-1-Jonathan.Cameron@huawei.com>
 <20191004114330.104746-2-Jonathan.Cameron@huawei.com>
In-Reply-To: <20191004114330.104746-2-Jonathan.Cameron@huawei.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Tue, 12 Nov 2019 09:55:17 -0800
Message-ID: <CAPcyv4jZG-5s6NsS-_-oNG45y0Qb1mVD_s8cCGqLYtzvHqEo+Q@mail.gmail.com>
Subject: Re: [PATCH V5 1/4] ACPI: Support Generic Initiator only domains
To: Jonathan Cameron <Jonathan.Cameron@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_095529_847808_BDE18413 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

[ add Tao Xu ]

On Fri, Oct 4, 2019 at 4:45 AM Jonathan Cameron
<Jonathan.Cameron@huawei.com> wrote:
>
> Generic Initiators are a new ACPI concept that allows for the
> description of proximity domains that contain a device which
> performs memory access (such as a network card) but neither
> host CPU nor Memory.
>
> This patch has the parsing code and provides the infrastructure
> for an architecture to associate these new domains with their
> nearest memory processing node.

Thanks for this Jonathan. May I ask how this was tested? Tao has been
working on qemu support for HMAT [1]. I have not checked if it already
supports generic initiator entries, but it would be helpful to include
an example of how the kernel sees these configurations in practice.

[1]: http://patchwork.ozlabs.org/cover/1096737/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
