Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 581BA1C6EB6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 12:47:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jFHrI6naMJXVi4K9NyL24d+m4RsB73lYMux6pC155Q0=; b=q+4N36dKjwCw8+
	FZzmVlj1Z8N479GipznLGH9Z3tvgtrUqHErZUrcv6zzMOgTmn0SZutTRCVw8IAyH4RD4mElrwUUfz
	ps4D4eMtF+a1AYRMKWPEVITI1cs5XWO9Y9A1dngrrscPr/kU0c+27xhL3rUEZItJFjc7IKOJ7NLOs
	lN2vZ0pfouRZ8UpE81WpFKDFBYMXNUbu8oJAVYgg43sQurUq4pcabbAELZP2JCoFSsj4f4aOAby3G
	Q10oU52StFyplW4u+hQsu8Pg9DuglRmuhn05ETfj1bF8fdbtiqHi/RitSIrXnZQtaAKTpFMq7vxaf
	2sfiGAWUA6MbmDfR4Vdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWHag-00075m-14; Wed, 06 May 2020 10:47:50 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWHaM-0006wn-DU
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 10:47:31 +0000
Received: by mail-wr1-x433.google.com with SMTP id e16so1613529wra.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 03:47:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=cc:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Qwb+qBipzy9Sya7/i7QPjcEXCofi8YMhsFWro1Oc+RU=;
 b=iNHOrRp2mE0AROquV0ABtVB4pPkIqmq1zsiSNLdh1QIAMoPxfIAN/lToK2MFBNv8Sa
 qVvW4rND/wj3c/3Un0pBbTEhDR6MKA9mKbNBw/0Tmc9LY7SWUiyijF3Td0/girB8R0AW
 Hq4dauMHgLSGzPhb7V4j7JqFr0/cwctcKqiEXRdPLmgX4CqcEzh53CXbHGWiHZxks7t0
 MWk178YsSWSts/XHDhk/u+gf3czvWptYIaHqNnk6W8htCtSbOA9wP0bWxUYP/tfkBeRb
 8KO2DW5h9+T8Ad2lJ5hVOCPoWb8eEoMD7TKXXPAsW2qoChMD65DNNeYeclKwS2a3ZlhV
 Dogg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:cc:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Qwb+qBipzy9Sya7/i7QPjcEXCofi8YMhsFWro1Oc+RU=;
 b=WSh+jSKVKqhXDJ8vdkCFGUwlTnAaeis5CQ7YdPMVeA73kacIlDAFhXpmb4uYbPLU73
 ycE3Vm6sJZUBz3GTW3ruFaj3SBYA/LyM5ReIOAavC/lzEUIK2qToCv6M+nW68gT9OvAU
 RQZtg399QHelMhSJRkXOOOb3z6WD7Yxa2lrBSnpJvsc7RAxpM0sK6udL4tAtOEPIx38y
 Jk4vN5yJZaWJl0rwOJDQwS3ksmGurRka869SLdX4OhMdjxQrDDejw6L9Grxn0UG1WYMz
 jjf76WhlNPX115ZbgNHQDoz06KCx/jPO9N8XEZplJ3rgCEWLhRYyqgiXkPsW7CBww1x8
 jg2w==
X-Gm-Message-State: AGi0PuZoEH/rWbcMhWD4cs963c5mH8qfL8rrkCMTQj+dbbopOqSJwiM/
 6yxG9MGF8YBqUgtzx8HHITUqxKOj
X-Google-Smtp-Source: APiQypKkQc44H2sW3RvsPwpnIHotifwMHs+kmUEdtD1AuDynhFP8jY/kvzeUknnE5+vic3Ppzi0cKw==
X-Received: by 2002:adf:ce10:: with SMTP id p16mr8611378wrn.144.1588762046368; 
 Wed, 06 May 2020 03:47:26 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:a081:4793:30bf:f3d5?
 ([2001:a61:2482:101:a081:4793:30bf:f3d5])
 by smtp.gmail.com with ESMTPSA id h10sm2013107wrv.29.2020.05.06.03.47.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 May 2020 03:47:26 -0700 (PDT)
Subject: Re: RFC: Adding arch-specific user ABI documentation in linux-man
To: Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>
References: <20200504153214.GH30377@arm.com>
 <20200505104454.GC19710@willie-the-truck>
From: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <66fbca56-bed7-d36a-9f97-395a3d82565e@gmail.com>
Date: Wed, 6 May 2020 12:47:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200505104454.GC19710@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_034730_468975_7594BDE8 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mtk.manpages[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, mtk.manpages@gmail.com,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>>  * man2/arm64-ptrace.2 (or man2/ptrace.2arm64): new page:
>>    arm64 ptrace extensions
> 
> Michael has been nagging me on and off about that for, what, 10 years now?

Perhaps not that long, but a while now ;-).

> I would therefore be very much in favour of having our ptrace extensions
> documented!
> 
> We could even put this stuff under Documentation/arm64/man/ if it's deemed
> too CPU-specific for the man-pages project, but my preference would still
> be for it to be hosted there alongside all the other man pages.

Agreed; manual pages is I think a better place.

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
