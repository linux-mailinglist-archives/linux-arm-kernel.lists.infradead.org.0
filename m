Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D994B1C3F5B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 18:06:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y3SunMCTScn2VpCVuItEH+FLOpeFi8RmTqiXudynFx4=; b=JsYdLrCcko8R1O
	YPtH8OddhJ1GNHyn9hf+7ne6OpMRSMW6LIl48c9XHoSZy7He+5Pf26AfefFBvEUImbu7mQ/90JT0R
	8PAwsV3M1Pne+E1Njuw6+n6mpoUwKcNeERXk1fuqnTHXa9Xnsl6UcWfnnNH19alt0j5j1mB+x4F/9
	qa+mAeg/+9A1j4oirz761CZpUMTFtueCOtBUvPI961pRWyf72fxM3aD4j+SNqNqPN7a08zxpKc06e
	/kB0zMCGNgSmQ2Z6Hrnci6gMBL8c3pMiWGw+V/ilCd0TcvdXEptsGGYdg3X2WLOfF4TJaoGZLnxEw
	NZ2E1jTJzGpR0xqIuurg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVdba-0002MB-Az; Mon, 04 May 2020 16:06:06 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVdbS-0002LC-M3
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 16:06:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588608356;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/JVeck58huMvFA8/TA03p+8Qjm09cOK85lDBTKzlyGU=;
 b=agB51x/fADpyzZBsaGRIpLggkwpd0EaL4wJW6JzJsQqbVexuKI9rWysHnZSe3V82Mew9EV
 r/fQetHiZZL6JYFW4djS9CjmrSOZeadXWF41APO2wuD4IfoZ47NGUpdevH6ZdKEtDplTnK
 3XmX4ITxCGjw/UQBPH5XZkiBa9ok6hY=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-122-rUp7ILTUNy2vKG_D0_f7eg-1; Mon, 04 May 2020 12:05:54 -0400
X-MC-Unique: rUp7ILTUNy2vKG_D0_f7eg-1
Received: by mail-wr1-f72.google.com with SMTP id a3so11038081wro.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 09:05:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/JVeck58huMvFA8/TA03p+8Qjm09cOK85lDBTKzlyGU=;
 b=ktfH003dlL6crxSDEOtr5U9C+qraSdVm+xKezt1+aQA0FyAUJI+TKGm8FRHdaut3qt
 jp+p3de7IlbT0R4kM1SZjcJCVNBfa7Wr0cPhLcoDYfDM/7drXhO4ehB+84cLCSwhxG8b
 W/cc8kWTSOICGnwGFg+WQCQjc3jNxLF1whbusbAVeVFAkdPTuDKTx/qTXoCPvQc7023Z
 WuSnXHAPkl+vqAfh59T5r1weJbPzFkJzX2zGWwkhS4G/jEDAFmZD02ItjksBuN2IZKEJ
 b+1UuRaD1ZrR4UjjenyihyDQUyjol58zfLCY1zBPoZzVoloVj26Y6xqvGZQG7BtwInBQ
 8N6w==
X-Gm-Message-State: AGi0PuZWWIVr9+O3GHh+aEs/P6h85+IKMAG9WzSUxkXHQHjFOWIXANBb
 jmyIg69lE7w4879K10uwe72TsSb3hCKy8WuGXRPEV2cs++oOsffYyWDoYNBwSofv5rCo0j8brpJ
 v7eQxZuHS5M2JBuagfrTFqLQn4o0BsC9KeIU=
X-Received: by 2002:a1c:4e16:: with SMTP id g22mr14716566wmh.157.1588608353311; 
 Mon, 04 May 2020 09:05:53 -0700 (PDT)
X-Google-Smtp-Source: APiQypLl+FvW2SgRJan9DFKftDDZJg4qPN8I25yOxi5TFHxm89GNl7rDCkuf9ca4ZxOYRM+JtKXkfg==
X-Received: by 2002:a1c:4e16:: with SMTP id g22mr14716532wmh.157.1588608353041; 
 Mon, 04 May 2020 09:05:53 -0700 (PDT)
Received: from [192.168.178.58] ([151.20.132.175])
 by smtp.gmail.com with ESMTPSA id n7sm1072795wrm.86.2020.05.04.09.05.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 May 2020 09:05:52 -0700 (PDT)
Subject: Re: [GIT PULL] KVM/arm fixes for 5.7, take #2
To: Will Deacon <will@kernel.org>, Marc Zyngier <maz@kernel.org>
References: <20200501101204.364798-1-maz@kernel.org>
 <20200504113051.GB1326@willie-the-truck>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <df78d984-6ce3-f887-52a9-a3e9164a6dee@redhat.com>
Date: Mon, 4 May 2020 18:05:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200504113051.GB1326@willie-the-truck>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_090558_796774_CBC3A67B 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Jones <drjones@redhat.com>,
 kvm@vger.kernel.org, Fangrui Song <maskray@google.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Zenghui Yu <yuzenghui@huawei.com>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/05/20 13:30, Will Deacon wrote:
> I don't see this queued up in the kvm tree, which appears to have been
> sitting dormant for 10 days. Consequently, there are fixes sitting in
> limbo and we /still/ don't have a sensible base for arm64/kvm patches
> targetting 5.8.
> 
> Paolo -- how can I help get this stuff moving again? I'm more than happy
> to send this lot up to Linus via arm64 if you're busy atm. Please just
> let me know.

10 days is one week during which I could hardly work and the two
adjacent weekends.  So this is basically really bad timing in Marc's
first pull request, that he couldn't have anticipated.

I have pulled both trees now, so you can base 5.8 development on
kvm/master.  It will get to Linus in a couple days.

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
