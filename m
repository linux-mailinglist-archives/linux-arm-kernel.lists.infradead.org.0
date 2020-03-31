Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 029D3199B74
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:28:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=58B+LFCUJZzFRBrAkUTRJA4hs0aKjl6zExTPc9Kyj4k=; b=X5iSdgWqzzJTmo
	6Vb3UHnWx5syfmiNivCfV6MuPT5mklGcxt8SxYrfXyis9Z4YgqwDW7Bp6QLpEUvxOVE6833VB1Fxa
	Yrr854EzwW9ur6VoM4IdAly5j6CBzCmoJQJTFmjshV4so2JN0ODSz8R6WW6znZIi7xuAQoQGnKc7L
	0/u5wK3ckcy2Tsyu1uwqg6I6rml+xSL/YPlWcV70Qvb2dro/LvUptCJqIBJbyLqHrUFerIzvp8TkR
	pX0ZFeXEPoyGC4ungXiEVwVuZPvyrH0prrfM4aKDxVuHyGuVG7A7etGXKtk+fNKdDG8JK9pXQNb0h
	0aj9tiQAwBi4h2tTOMPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJkI-0007sQ-O1; Tue, 31 Mar 2020 16:28:10 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJjd-0007Qk-Jt
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 16:27:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=XkVeG+wiUd998qeT4qan+1QjPL9epNOUfW2FxCj8pH4=; b=v/uxGcVHDI9J+c9Vo3ihaFyyhW
 Pxy1Vu+XnJh9Sj9mNexV4kooufnVQP2W6VPxlHPJGOtTix4fNCwN8NuqYFNLzvndVF+r1UhHaXE3z
 Ld2l0fLZjE8BApXY4SyVgU1rowLbw1wouNxQOHT8O+WallidAztZ+W3P3BO+z7ra4xLMfa3/xxht4
 9F5MaWIxtYK8/IXGsQi265nYQ2nQRasJ0WI3XDZX7eRxglrNCraBtNPDySTPogROQNuioq4U044+Z
 IsR9rGNwi7xs5bPt/u/rkK3ZIkS04Dp7UPz3T5FN9bRvsMCLcaclg1qgQnXNPLZnqgPp3Bim7IP5G
 W6jFmd4A==;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJI8g-0004Nf-NQ
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 14:45:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585665912;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XkVeG+wiUd998qeT4qan+1QjPL9epNOUfW2FxCj8pH4=;
 b=dLcZJ7MKJD0OjBDk/JnPd7w1YUtu2ilm0/9ktnkB6XKmkFYHmFPGEZfuHKEHTjUnNDxcX6
 9OkiauZqTv3Q3YAgwg1M+w0wEHFLP584Bjppw2QjY04vHClVqcRhH/yfP3nXXC633awFgR
 ZHka4meUqWKmwgWTfvbLV6KIbCGq13s=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-431-q6v3hlFgNJiQfOaMSXytDw-1; Tue, 31 Mar 2020 10:45:11 -0400
X-MC-Unique: q6v3hlFgNJiQfOaMSXytDw-1
Received: by mail-wr1-f72.google.com with SMTP id y1so11955137wrp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 07:45:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=XkVeG+wiUd998qeT4qan+1QjPL9epNOUfW2FxCj8pH4=;
 b=pbHLQFWrJ/iDYE5qFzKaK5mtWC7mQskABOZgDRJoyOOK+gpQhITqiB308ty+M+Zarh
 j8esUsNgkbK5ud3W/Sni8H5NagN96Ej9du3Vzejz/bhxeL5pG1+AcbdU85QKBdF1c3j8
 m9/1g+x+s24lCT0jZwptMbpI7oVdKh8gGQPChf6tWNUpMpOJK7xzZ9PCii4n/UdWkzE7
 vAWvSYwI2HfUIZgbuo1uZGlUjjh2G40b48gA7wRqtbNXgCebGyAcJhRDywMdzqmukdxf
 JgXmtg3vLCSIe8SasoU5by0xKbASLYM3bBXWXHConts7n1FEU3HtxPm9Qw/Q5K9cNoCE
 lzHA==
X-Gm-Message-State: ANhLgQ0K5BQjngkbFkKU124eQ4F3v1Q5mFuODBfQ2l2774mFTentXXTV
 NoZ3P/xf4t5f9XfsYrWicOhgCFD+dhAc+MvtPstSTptbfqYEMwSwQA9AG2p0RbQIrhVLkN9q1a9
 TTJS7p9lRJgkFrGBG+oj7OYbCBfhjj2RiD48=
X-Received: by 2002:a1c:4054:: with SMTP id n81mr3643236wma.114.1585665910100; 
 Tue, 31 Mar 2020 07:45:10 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvRBGuELyCrlyg1lc7SNVVMP1SITAsNZT3BZtrLyIlYKUQ2VKqqSdXcjj6kZdCsf1nf2xKUeg==
X-Received: by 2002:a1c:4054:: with SMTP id n81mr3643204wma.114.1585665909844; 
 Tue, 31 Mar 2020 07:45:09 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:b55d:5ed2:8a41:41ea?
 ([2001:b07:6468:f312:b55d:5ed2:8a41:41ea])
 by smtp.gmail.com with ESMTPSA id i1sm25851518wrq.89.2020.03.31.07.45.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 31 Mar 2020 07:45:09 -0700 (PDT)
Subject: Re: [GIT PULL] KVM/arm updates for Linux 5.7
To: Marc Zyngier <maz@kernel.org>
References: <20200331121645.388250-1-maz@kernel.org>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <cb49ff66-e943-f8fe-65bc-2e52ae36e47e@redhat.com>
Date: Tue, 31 Mar 2020 16:45:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200331121645.388250-1-maz@kernel.org>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Vladimir Murzin <vladimir.murzin@arm.com>, kvm@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 KarimAllah Ahmed <karahmed@amazon.de>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Christoffer Dall <christoffer.dall@arm.com>, Zenghui Yu <yuzenghui@huawei.com>,
 Eric Auger <eric.auger@redhat.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Olof Johansson <olof@lixom.net>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 31/03/20 14:16, Marc Zyngier wrote:
>   git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git kvmarm-5.7

Pulled, thanks.

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
