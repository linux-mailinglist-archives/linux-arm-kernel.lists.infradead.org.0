Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F33C1F3B20
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 14:52:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yWRexx9cn3ogZDuvrZncqSId9Czw6opWEtxAkm2tLeI=; b=kre4FOJyKU1pFSVIy+5xQHEPq
	HsI9b0kOO0zlXfo+kThO1Okn8lbHCkb7HxBNOB8Ig/zgeorGYmB03HpN2x3JyRtGUcm0cNTdN7lXa
	Vcg7PXOLQ7l/OB9nENciOOO9M/7MmL9C9Icn8lU72s6+ZgVApZFvAXiz0+lqR+s5ZV5G9qf7J9R0l
	y65eHzi3o3t6HU92oNAVEHmz+D7bv4r/jhJz4BDqTmiJi28uYJcfzIRxax6oxn5fyFf4vtil6tLJE
	LDnTs3yTNi6RD/8z8tgPReBomdYMkggYEgvN+53ZTfREfuQtWQhFuDp0C7SAG7WKvboYd+h4ANhut
	NToKG7asA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jidjz-0004pr-Tf; Tue, 09 Jun 2020 12:52:31 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jidjs-0004pR-0R
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 12:52:25 +0000
Received: by mail-qk1-x741.google.com with SMTP id w1so20609211qkw.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 05:52:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marek-ca.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=GQ2sLPs/epVnyjZzWIfTqRcVVJg1rSF+9GAtg+wI7l4=;
 b=gY6ZCubDoKQrGU7ptrdiaYoKcfT+t0e1Xs2bQpvG1SEfpV8TOz4YnJJrYAo7EDRxQb
 SghptqAPqujTT8vctflNm5Qc6iuuPSZ9dJSOgWEd4DHjv5oQ5y99oDij+CRQtvo4QFii
 YIq9AdtglI/1JNq8TLmww3txU8ZdHP278oaN6ftMD5EbwOpsKlpsp2nD2TF5PMh4S+O8
 KqQBIdoRkv0hYRgtVqPALx7qhVn0IQOELrLQ+jVZXHrXiRMkUPkELH8rCA2PCjC+Cz3+
 JqD7rgxoR3SdrkSRtZnsNMmxUD0V4rGlvlgo/vavxFKja1/rb9vjIcYMoPouEppL41m4
 GNqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GQ2sLPs/epVnyjZzWIfTqRcVVJg1rSF+9GAtg+wI7l4=;
 b=VkosAdGenWPEh2hOirR03Eb4ez7Y3EUb+IXvLz9IN43OgqbReOuEE/zLaFuT0j27YJ
 Ds4MDg+ZDbiQ1uiV17aKJrX5qFad9mneDMeLIevgh3yX9FRQ88zvEXp+UzR9CqAZ/is5
 50QmSw9r1ODmGyVP5Jv9SozWRqWBRxo+CSoCulA/lSZupCudAl4+axsczc/L1awVtIrA
 MIjtaybv7vDu4Bx+WSqWMt9Et80K0gTWFM5V5/fFKOh/iUYcXSCYr9Ah2VUWpb99+cPW
 E3HpQigmOjUzTHb0ym3UPktbpaeq7ENcuud9TjOBldkwi0BN5sKhHNZ+9HtK0FJgQJ1e
 JKGA==
X-Gm-Message-State: AOAM532SbNJ0aoaqyfJuzeZ8RPx025jhEQsg3lX0R/3oMWahbVA7SQuZ
 McuFGwWTozaN3qpJcxIQ5ae3XNxRlaI=
X-Google-Smtp-Source: ABdhPJyxfE18rFZ0FqONE+MtUYpLkepiQmw0nj+S2d1AqD1jJSXZ0Qc7Qs+Bh7Kx4jKd84645vu+OQ==
X-Received: by 2002:a37:8705:: with SMTP id j5mr27773497qkd.166.1591707141752; 
 Tue, 09 Jun 2020 05:52:21 -0700 (PDT)
Received: from [192.168.0.189] ([147.253.86.153])
 by smtp.gmail.com with ESMTPSA id 207sm8959894qki.134.2020.06.09.05.52.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Jun 2020 05:52:21 -0700 (PDT)
Subject: Re: [PATCH] arm64: set TEXT_OFFSET to 0x0 in preparation for removing
 it entirely
To: Ard Biesheuvel <ardb@kernel.org>
References: <CAMj1kXFS8Vvjfpb8HYzRvsaB0j7bs+2V4rXE8DzfNMJxsV3r0g@mail.gmail.com>
 <24c1529e-1c8e-6912-965a-f4b921e09d79@marek.ca>
 <CAMj1kXF-eLc0RWmjfUYAk9BJ15-A5FwnPWo0nXoyqFQa3A62Mw@mail.gmail.com>
From: Jonathan Marek <jonathan@marek.ca>
Message-ID: <63eebe9b-9aa8-addd-7965-df59b7237079@marek.ca>
Date: Tue, 9 Jun 2020 08:52:42 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAMj1kXF-eLc0RWmjfUYAk9BJ15-A5FwnPWo0nXoyqFQa3A62Mw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_055224_050497_32FFD6DB 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/9/20 8:37 AM, Ard Biesheuvel wrote:
> On Tue, 9 Jun 2020 at 14:35, Jonathan Marek <jonathan@marek.ca> wrote:
>>
>> Hi,
>>
>> Just want to add that this patch also broke booting my arm64 kernel
>> (CONFIG_RANDOMIZE_BASE=n). This is on a recent qualcomm board.
> 
> Which bootloader does it use?
> 

abl/edk2 
(https://source.codeaurora.org/quic/la/abl/tianocore/edk2/tree/?h=LA.UM.8.12.r1-11700-sm8250.0)

Just looking at it quickly (I am no bootloader expert), I think this may 
have something to do with it: 
https://source.codeaurora.org/quic/la/abl/tianocore/edk2/tree/QcomModulePkg/QcomModulePkg.dec?h=LA.UM.8.12.r1-11700-sm8250.0#n149

> I take it reverting the patch and enabling
> CONFIG_RANDOMIZE_TEXT_OFFSET makes it fail as well?
> 

Yes, CONFIG_RANDOMIZE_TEXT_OFFSET also makes it fail.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
