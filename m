Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F289E1C40B0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 19:02:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ygKPxuAwsHcOpnYw27jWXPZlZv7TtFQ+wiJqjsqgjUo=; b=jSFm7PnMNO9JH9
	WiYPixx64bCjShliZs6xLErpoTJnJq1lJwynWTUfBG2xrMDiLm3CUqwB1wHO6801kohqg2Jv/PvN2
	yXk3SPt4fV+I2bCHSMZ8DB/9cbuSiAvnXwSwnfvlnxZSwhWDcCG97FKue8onwrbQ6LHJc0arT1kvv
	4pZADDuicTwqIvHLIA3dYHs9mlrpROfa5o9m+6FWDKBQxGbNZE6jNoZDSeebrWdj73Sl4wY7pyI8W
	FAgLIUf0AtLp4H4JTnYfDYuUH58nnGT7tUhWRgiunogzisosWBCrmWzfaL/FoY1W+J7ti9jMuWPLL
	3WXYcEyioWUPnMQiBejw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVeUM-0006mQ-Hj; Mon, 04 May 2020 17:02:42 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVeUE-0006lg-SJ
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 17:02:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588611753;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DsuiJ3Bl4DYlwcJ0OMVfbSTOPgPDHtHw1erBIpHZk74=;
 b=ZmA84onEXF1RVLzshkZF8wEUEU5PxO4BoTZkqC1K2YEzBD/9Nn+T8291vqPOyOxQuQRQrA
 QtcqBolgfCzG+JENkqvtwdtmRgBl2dVyz1VcxNiF+pV1p5G+YobkFRGF2aBYgLYpWeEB4e
 IZw5mz6ZivI1ie8TsPLXD8tmQpNOpxk=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-184-079ZMsYXM2-daQH-Qz-zDg-1; Mon, 04 May 2020 13:02:32 -0400
X-MC-Unique: 079ZMsYXM2-daQH-Qz-zDg-1
Received: by mail-wm1-f72.google.com with SMTP id n127so124836wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 10:02:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DsuiJ3Bl4DYlwcJ0OMVfbSTOPgPDHtHw1erBIpHZk74=;
 b=BENZszey0Ix5cbjpzN7Rcw+/MDgkuLPAb7MycJCAAvfvGq5l5iNIuzC2QGjPnA5cF7
 VacxZp0rEs+FfGl50QLpL6Gg/olqZzUr3+aRmAAxEn1I0IzgHmtONYISU3XK3pQqMVbA
 GqY136fR1BUiIg9xhbdwGPJiouQmLJeWE6aUvCCcf/YetVfP6lNzlekVTzcK/0Ab/xnt
 1/KiY1nToaib1tLe+SB9nhIOjhAMfc5QeiKdSYRFDYedxsekKL1TZqEkmHj8tMo3QY41
 2KpWD/+2jRDMTgGhY7/Ub0rmdBK403N2/LtXeZTMvrGyPoFOLVHfkT5TY0Bvwts8b7ED
 z3iQ==
X-Gm-Message-State: AGi0PubFN2Cvue493F7JLQBr0Hxos7Z8qa8smjigRU6zfW8Q6dcuAUAe
 RsyLsXH0QoIUAnrEY9ibz8HlCEbwz/QrVm831fPFm4TQb+6fBm4VGtC2IJiAQpe3O25hL1qi6LA
 WNWfXK47nrv71LzIWExHcrDD/uMWlmo/LAHA=
X-Received: by 2002:a5d:628e:: with SMTP id k14mr270959wru.390.1588611750793; 
 Mon, 04 May 2020 10:02:30 -0700 (PDT)
X-Google-Smtp-Source: APiQypJ/Yx8kOwELdCr6LNcodfCIoQBcpJd3XJQs7+YRpB/STWPwshDBcVODsO4ViVUHu2CMySHdIQ==
X-Received: by 2002:a5d:628e:: with SMTP id k14mr270926wru.390.1588611750534; 
 Mon, 04 May 2020 10:02:30 -0700 (PDT)
Received: from [192.168.178.58] ([151.20.132.175])
 by smtp.gmail.com with ESMTPSA id h137sm1233255wme.0.2020.05.04.10.02.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 May 2020 10:02:30 -0700 (PDT)
Subject: Re: [GIT PULL] KVM/arm fixes for 5.7, take #2
To: Will Deacon <will@kernel.org>
References: <20200501101204.364798-1-maz@kernel.org>
 <20200504113051.GB1326@willie-the-truck>
 <df78d984-6ce3-f887-52a9-a3e9164a6dee@redhat.com>
 <20200504165132.GA1833@willie-the-truck>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <7e715659-112d-febd-91c8-385e272d2425@redhat.com>
Date: Mon, 4 May 2020 19:02:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200504165132.GA1833@willie-the-truck>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_100234_991149_A4D6028B 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
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
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Zenghui Yu <yuzenghui@huawei.com>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/05/20 18:51, Will Deacon wrote:
>> 10 days is one week during which I could hardly work and the two
>> adjacent weekends.  So this is basically really bad timing in Marc's
>> first pull request, that he couldn't have anticipated.
> 
> Understood, and thanks for the quick reply. If possible, please just let us
> know in future as we can probably figure something out rather than having
> things sit in limbo.

Indeed, it was my fault.  I got stuck in a "1: tomorrow should be
better" / "no it was actually worse" / "goto 1b" loop.

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
