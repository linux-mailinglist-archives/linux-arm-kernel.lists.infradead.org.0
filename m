Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 073E1AE95C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 13:47:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date
	:Message-ID:From:References:Subject:To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rt3hfEF6eVjBLqkorHNzK3b64R+3+zwuw6MkRICl6d0=; b=LRQ82j0dcyPNaj
	uD6YW9oC3LiImu75RZEyCT44l1HYjfiegXngG4f9f0CX459pkXh67AhSYaDLjMOKj/ZAkc0OutiWA
	riAjbHkJdKiEWKPsKX73Jvje3MIc5ess6fZRHOLtK77H72Kjf7+L4ApQJ4j87ESrIDaVwx3FaBvCn
	ZrgzVMkBKfmwcgc593MpWfqT8dkI8GFugU9yOtP7WCQQl/jlcsNANwyY0OJWCUDvfUDKO50O5J6dc
	rqQ9Gji+4jY+L7O1Ghh3Uq7LhLSX5vxvOOafWCBuoMh3cC+zq4M3YIWxhRoTY07IBwPAHbX87GvrH
	X2gdfc5HeKmxiv9yldUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7ebr-0004dU-Vd; Tue, 10 Sep 2019 11:46:59 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7ebm-0004cQ-6q
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 11:46:55 +0000
Received: by mail-ed1-f65.google.com with SMTP id i1so16808445edv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 04:46:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=abgaMe6ZZ95gWMUy3hnBn63QDEWfYInzgOcZ2MI8v94=;
 b=cdYQ05hDgCNcxv+u/CvUz+NgQBMZfF/ZjrrfAloZZE69Tu4qQJ9/RDWh8v1+DrXgVN
 Z9tYyQ4BLERlqbdYiXQgUea6NMxVkG1iRtOpRvmUzKheHCS2KRtd4X0ojSIk2U4Lw1Ve
 zxRu+0eZsIxqYPsziYK76ES0EkFhUpItxVpbpOe3RJQ8T02Y0Z1Z27XhwM009A9gtaP+
 ooDJKqHqmavPxTtZDnIwYBXmT6H1xfxl4oUw/eVXLp/s9VElyHGVNAuBZsko+EsRLZrm
 q6P9pyaPp+0+T6hdn1BkqIqmB00BtgpUb3mm/mImyxE5t8hRfEk7Nl1Zrht6+sgnIg3U
 vaHQ==
X-Gm-Message-State: APjAAAWIKzV4zDJAvYQWdW4KfZem+Gt8IiudBReqzvvFpAKfy3A2TJMe
 jgp5QSPXmBr2OPXuOztMr9y5DOP2
X-Google-Smtp-Source: APXvYqzec2pfMLAxkhhovJ45V9gaVPv8RRuMLY7VMY/ZkxobyGPpBpSQQBrFTGvFv0X4GFnIClIdFw==
X-Received: by 2002:aa7:d28d:: with SMTP id w13mr29796008edq.264.1568116011004; 
 Tue, 10 Sep 2019 04:46:51 -0700 (PDT)
Received: from [10.10.2.174] (bran.ispras.ru. [83.149.199.196])
 by smtp.gmail.com with ESMTPSA id p4sm3408685edc.38.2019.09.10.04.46.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Sep 2019 04:46:50 -0700 (PDT)
Subject: Re: [RESEND PATCH] MAINTAINERS: Update path to physmap-versatile.c
References: <20190813061024.15428-1-efremov@linux.com>
 <20190813063251.21842-1-efremov@linux.com>
 <CACRpkdZRW1fpjf=vQbuDdSC1ZU9o2tq2C2bL0GonQbnPWc06-A@mail.gmail.com>
From: Denis Efremov <efremov@linux.com>
Message-ID: <a406a875-b267-9653-ced5-4afee0056975@linux.com>
Date: Tue, 10 Sep 2019 14:46:49 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CACRpkdZRW1fpjf=vQbuDdSC1ZU9o2tq2C2bL0GonQbnPWc06-A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_044654_247445_D9D6A0AD 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: 2.2 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.2 MISSING_HEADERS        Missing To: header
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yefremov.denis[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.9 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
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
Reply-To: efremov@linux.com
Cc: Boris Brezillon <bbrezillon@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Joe Perches <joe@perches.com>,
 Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 8/13/19 10:20 AM, Linus Walleij wrote:
> On Tue, Aug 13, 2019 at 8:33 AM Denis Efremov <efremov@linux.com> wrote:
> 
>> Update MAINTAINERS record to reflect the filename change
>> from physmap_of_versatile.c to physmap-versatile.c
>>
>> Cc: Boris Brezillon <bbrezillon@kernel.org>
>> Cc: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
>> Cc: Linus Walleij <linus.walleij@linaro.org>
>> Cc: linux-arm-kernel@lists.infradead.org
>> Fixes: 6ca15cfa0788 ("mtd: maps: Rename physmap_of_{versatile, gemini} into physmap-{versatile, gemini}")
>> Signed-off-by: Denis Efremov <efremov@linux.com>
> 
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> 
> Yours,
> Linus Walleij
> 

Could someone take this fix through his tree?

Thanks,
Denis

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
