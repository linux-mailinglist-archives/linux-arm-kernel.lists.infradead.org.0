Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B15D5D9E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 10:38:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PIR0ZYxwBa+7jfcTqcBxuxB1OMTUJFIG38iCMIwRV10=; b=sI5JD53LIxoxEVintVia1Guh9
	LX7wwNboJzyp2aUH8ANA/a5rR9sOqu1WastnohtEV5ReAnEWypsuzTwmwSg54TI+SevCCTUd8DNgx
	IMm6chQT7YKh//fwtHubMz4u4+Zz71MIIrr5wgXLv/DKzVdowre695QrRpSSxTD30hnUs9jaJSEhk
	UVjxLHeKmeygaHGp1NcVu0Ad6Rwy9s2vC8ZpMZ64rBnVa6TY02pGdHXJNetpvt1YbB5Wr/SwjWUEB
	6hCe5OnfXh/V5Nx89HjKAzFqXOCFAZavxL+dasrg0zqd4xDTpKc9YDIBfSy6llE8Y9kw1++em0MW2
	jXv8lrFzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJvrq-00014F-Vw; Mon, 14 Oct 2019 08:38:14 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJvrg-00013V-6a
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 08:38:05 +0000
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B2AD3859FC
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 08:38:02 +0000 (UTC)
Received: by mail-wr1-f71.google.com with SMTP id h4so2389705wrx.15
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 01:38:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+0+jYoRl9oEFQs2yc70KUPcvIdquCCUud08IyDTa0Sk=;
 b=fcqvfN9gUMtUdxChruKGWZ25mSah4nIAVQ4B1MKdpwKRpk6pTE2GX0rhFcfX40/PDJ
 aNCKxSMPfnxJPFohASh0UAKUP9Q9++D/pEdDzpCPXv9Pn1VtYqWCIEpwpYO+CKesg8do
 O3z2tC+N5jFqLC43CT6bt35JPih0a6djyyYrCCiiJev4nsejqa2dEjXbtX5pufDSW7Bs
 lEdPmMhogzZDfGxHZ41g/uUNtoSHgjK8rGUg06SrHAGAk6ZDWLsTKcgsTVvqLdlF9igq
 9cpeqOd90Gj5hf4kXkdLBWVaMVS1dMSZsRNvFlCKAki4iR3oJYVJJBH/tW/Vo/7uJOMq
 iTmA==
X-Gm-Message-State: APjAAAWx8Uf16ocQQlM9BXK1mZZaohU2RHASadePgPjt6avD8W+8rJbR
 tKfDbo+rpFuKAI/NkEMsU5QaeMa7QqFBdK2j7CWV+M7PVwUg06Zu0vDS1pmalknReuyeL+0JAnz
 xBzCNjOAT2o9DPrmfZMkksx9wjskcjf3JlH4=
X-Received: by 2002:adf:ef83:: with SMTP id d3mr24269914wro.398.1571042281386; 
 Mon, 14 Oct 2019 01:38:01 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx1Z5KT0VRMmx0ICRJQ57vVQt4XOO7A3AyHOiVUdwcd70YI9rxvp4vdD5PKGwKw9pM+rhgrew==
X-Received: by 2002:adf:ef83:: with SMTP id d3mr24269904wro.398.1571042281249; 
 Mon, 14 Oct 2019 01:38:01 -0700 (PDT)
Received: from [192.168.1.81]
 (host81-157-241-145.range81-157.btcentralplus.com. [81.157.241.145])
 by smtp.gmail.com with ESMTPSA id x5sm22878762wrt.75.2019.10.14.01.37.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 14 Oct 2019 01:38:00 -0700 (PDT)
Subject: Re: [RFC v4 00/18] objtool: Add support for arm64
To: Raphael Gault <raphael.gault@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 jpoimboe@redhat.com
References: <20190816122403.14994-1-raphael.gault@arm.com>
From: Julien Thierry <jthierry@redhat.com>
Message-ID: <f4fd76e1-ae15-3796-77a3-102ccc1ee028@redhat.com>
Date: Mon, 14 Oct 2019 09:37:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20190816122403.14994-1-raphael.gault@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_013804_256445_FDEB9F00 
X-CRM114-Status: GOOD (  19.56  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, raph.gault+kdev@gmail.com, peterz@infradead.org,
 catalin.marinas@arm.com, will.deacon@arm.com, julien.thierry.kdev@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,


On 8/16/19 1:23 PM, Raphael Gault wrote:
> Hi,
> 

[...]

> As of now, objtool only supports the x86_64 architecture but the
> groundwork has already been done in order to add support for other
> architectures without too much effort.
> 
> This series of patches adds support for the arm64 architecture
> based on the Armv8.5 Architecture Reference Manual.
> 

I was wondering about the current status of these patches. Is anyone 
actively working on this?

If not, I can pick that up and try to make this go forward.

Cheers,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
