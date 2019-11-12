Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B71F8970
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 08:14:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VFsWOmlSaE+GS4OKRJo3BC8YOB3rxpg+R7SjQ9cxV7U=; b=Q1M1ovoIMEI5K+
	knjATvGLYmURnBBGjbRgkf07P8ZyX2QqJMvbOat2jOS2K+TTwwd6JnZ4tVB8ZS7Bzu0FqDeta+FAG
	csowuilLtOos2KqdTUfpDOPaktlHOPkMMta40tE83Ct49/KIaJGBI6sJfLVbgxK6kc3BTaGerxUVu
	33UpYDX6UxtsPwVregwb3w8hziu2DFzzNTdoY0VEPOjIN7Egg8oDh4jIFGa6lEdv5Z2aXqGinV9zd
	58GXy4x0rH3vYPLNQGpIVoqho5XS9NEuzrAfGxqNZILPYMqxku9KW8IsuyvE/QPlpw11STTtW4jJ1
	UjWFEbtt5pnniMoCNzOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUQNp-00082b-0z; Tue, 12 Nov 2019 07:14:37 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUQNc-00081Z-J2
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 07:14:28 +0000
Received: by mail-lj1-x242.google.com with SMTP id k15so16557650lja.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 23:14:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=moBLNgsFkEFILNTGmzFVRskFLWF0bywiqBaR+demKl0=;
 b=WMGkKeOZSZv4nK3kYqjUDbJgm6OIX8/Pp5ul5RcMLv8HRndoSur1Gj5yp8uTwr6viK
 8pIe3W5+rvA5uDSH0I+6oPAWY7C94jtjF9Ot+31Ik/dH+uPG7MB8lgizP93vIMt3xMc5
 N+J/WomRl5rVfra1rtwsIIzgkQZcJ0HySeqwA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=moBLNgsFkEFILNTGmzFVRskFLWF0bywiqBaR+demKl0=;
 b=AZr6qekjgyEqxVNNCyULVMQerrUAayKosjtiJ7VTFsELRiw0Rw34rpBxO5GHqeuY+3
 3DklosmkC+T7AbZjPwHrz52PGEexcy8VKabxZ2WDg2CsICrP0mVHkzWVSSDsv+r5vYqE
 1abhRikCom3yhfinpnMn2q11HS5klEIinDejb8O5fX7ev43/tf85VSL5QzFxpHm0t0d7
 LMTt8ljtBkG3rIIpZMHimQ2GSzoehSqiyujoTz39RA11y/y2UcGjxwA6Stl5sQxwAYh9
 XgShDNoDlDnbqgskuTKM3M7GzPsL4aZpUPRgvi9kygWv+kFdrM4zT5xKgJpt4TZGzWbB
 2Llg==
X-Gm-Message-State: APjAAAWSb+dL8u0lSD3N1hz+dbWqDj9QRmJgFCFPOTXyeC6YqyXAIgjg
 1MzmPDncn9Ils5Oa5BCKtz90dW1J5/JBz0JD
X-Google-Smtp-Source: APXvYqyGJCHfIoWOsBaNjhwiw9M0OJ8bZPYtuCumKkdWcGPrH+aj9AtA3dwPCKUzoK1SUKCQ1cmZMA==
X-Received: by 2002:a2e:8544:: with SMTP id u4mr2947819ljj.25.1573542862167;
 Mon, 11 Nov 2019 23:14:22 -0800 (PST)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id p193sm12765748lfa.18.2019.11.11.23.14.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 11 Nov 2019 23:14:21 -0800 (PST)
Subject: Re: [PATCH v4 04/47] soc: fsl: qe: introduce qe_io{read,write}*
 wrappers
To: Timur Tabi <timur@kernel.org>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
 <20191108130123.6839-5-linux@rasmusvillemoes.dk>
 <CAOZdJXU35+G5CMrS3247mgMjQH7__MxP8wpW6yjn1_MLD-sGqw@mail.gmail.com>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <e37d24c5-6d4f-c8bf-1c38-f3e8b8e85eeb@rasmusvillemoes.dk>
Date: Tue, 12 Nov 2019 08:14:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAOZdJXU35+G5CMrS3247mgMjQH7__MxP8wpW6yjn1_MLD-sGqw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_231424_627206_800430BA 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 lkml <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/11/2019 06.17, Timur Tabi wrote:
> On Fri, Nov 8, 2019 at 7:03 AM Rasmus Villemoes
> <linux@rasmusvillemoes.dk> wrote:
>>
>> The QUICC engine drivers use the powerpc-specific out_be32() etc. In
>> order to allow those drivers to build for other architectures, those
>> must be replaced by iowrite32be(). However, on powerpc, out_be32() is
>> a simple inline function while iowrite32be() is out-of-line. So in
>> order not to introduce a performance regression on powerpc when making
>> the drivers work on other architectures, introduce qe_io* helpers.
> 
> Isn't it also true that iowrite32be() assumes a little-endian platform
> and always does a byte swap?
> 

No. You're probably thinking of the implementation in lib/iomap.c where
one has

#define mmio_read32be(addr) swab32(readl(addr))
unsigned int ioread32be(void __iomem *addr)
{
        IO_COND(addr, return pio_read32be(port), return
mmio_read32be(addr));
        return 0xffffffff;
}


#define mmio_write32be(val,port) writel(swab32(val),port)
void iowrite32be(u32 val, void __iomem *addr)
{
        IO_COND(addr, pio_write32be(val,port), mmio_write32be(val, addr));
}

but that's because readl and writel by definition work on little-endian
registers. I.e., on a BE platform, the readl and writel implementation
must themselves contain a swab, so the above would end up doing two
swabs on a BE platform.

(On PPC, there's a separate definition of mmio_read32be, namely
writel_be, which in turn does a out_be32, so on PPC that doesn't
actually end up doing two swabs).

So ioread32be etc. have well-defined semantics: access a big-endian
register and return the result in native endianness.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
