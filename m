Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8071AFC1F2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 09:55:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NKXUzJxno9y1mjqtqsWfIIfKxkjbK59ttTlfLDVqJD0=; b=K5d+bqErkbmZhU
	GIvTazvUn2BNKzFGBr99cjcPT/hWQNaubM/ThHmEKOLjYMUDPaIqbFhJgik9wxLYDGSjSDvErnHvX
	E59YW06oWtuAoJSfjzsAUV8nGtC/WJo2Qyc+j+zDH5oSxuCdVNrNsJjaHDk9YQyQ05/7c/izqG3di
	DQ5Abp6I2ESiem+HYd2gQ+2U6amVBj0tUVzkTD+8igwbL26WYKAZg6xCvEV39lTeRiX2ZuzU5Mocj
	C14r/WsLi6OBewKOPDNLZ9VWLt89Imp0ruxapk9sYhok45yf04C+YLkEHbIA6zzYNjhWCWsdgWHpg
	4SDrirqJ59KBFgUwZ8ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVAug-0008FV-H8; Thu, 14 Nov 2019 08:55:38 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVAuX-0008Eo-12
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 08:55:30 +0000
Received: by mail-lj1-x243.google.com with SMTP id n5so5756163ljc.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 00:55:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=8Yha/Jq+ZFQjtGyiO5rUc6KyiAaRy2IYHugA0slnRKs=;
 b=fmnpwAJEY8GNrGE9anOHfwVKoipdKrgLR1iOYFzBsD9kaxaEe0UKTTvstTn0CQD5Jv
 kBlb3kU6U71mmLvUAx8y5bzM1W5GYgs91XI2PEJVPdlaoXjQUYsmi0CUn53ZT04RkXtj
 OMIsyIx4Q3flxHoYZKaCn7Qh8bHpnYYK1XmLQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8Yha/Jq+ZFQjtGyiO5rUc6KyiAaRy2IYHugA0slnRKs=;
 b=oXuFGLDl2tpHLH5YATfYdXe3CMhqZhlZhLkFGAT/coJEtGv0S39sRzdtrI2dIY2iaC
 AKyRuZAcGUV3r+VgBJ5T9vOaq3TCJFKF2oG4whyzivy7AsVrxZQKt8lC0XcHmR3VTUcr
 8xBjoj4AHeXtR4D6T20tiP+g+Y/Lgizxs2Kl5BTS3XAZx0DTq5csFfIhYrmRfq+ln9eR
 nftEK4YWIhSsvozLz3+1qTV9uKQrOU5yljJ6PWrAyKtdl4oiSeuId+cULqW6UGjKIewm
 U5De90D8OMSb0FoXhjYcazLfNKtAqSStV+tdeUHQyzBwP9M+MA2XR5FJB8EuYPL5Jd4n
 Yjkg==
X-Gm-Message-State: APjAAAVL4FtWXzd1o/fmdJYbECi4BivDDv1Jt0E8e0dc2xX1a45mpzR7
 Is3zF7xsIn/5ajWsbdwIvISIelhHxhqdoeM3
X-Google-Smtp-Source: APXvYqzqg3aGYow1vlq3tQPQhPBivdAM8jYV30pHK5iJmyQtydaEA/+ygPKZ92IqgkK8EwdBreBjrQ==
X-Received: by 2002:a2e:890e:: with SMTP id d14mr5652232lji.6.1573721725489;
 Thu, 14 Nov 2019 00:55:25 -0800 (PST)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id e14sm1984603ljb.75.2019.11.14.00.55.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 Nov 2019 00:55:24 -0800 (PST)
Subject: Re: [PATCH v4 04/47] soc: fsl: qe: introduce qe_io{read,write}*
 wrappers
To: Timur Tabi <timur@kernel.org>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
 <20191108130123.6839-5-linux@rasmusvillemoes.dk>
 <CAOZdJXU35+G5CMrS3247mgMjQH7__MxP8wpW6yjn1_MLD-sGqw@mail.gmail.com>
 <e37d24c5-6d4f-c8bf-1c38-f3e8b8e85eeb@rasmusvillemoes.dk>
 <38d87cf8-5945-61d7-80a7-c8374cbe729b@kernel.org>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <4592eea6-1ba6-5c08-0500-6ccf030d7929@rasmusvillemoes.dk>
Date: Thu, 14 Nov 2019 09:55:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <38d87cf8-5945-61d7-80a7-c8374cbe729b@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_005529_071108_915BBDC7 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 lkml <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14/11/2019 06.08, Timur Tabi wrote:
> On 11/12/19 1:14 AM, Rasmus Villemoes wrote:
>> but that's because readl and writel by definition work on little-endian
>> registers. I.e., on a BE platform, the readl and writel implementation
>> must themselves contain a swab, so the above would end up doing two
>> swabs on a BE platform.
> 
> Do you know whether the compiler optimizes-out the double swab?
>

Depends. It's almost impossible to figure out how swab32() is defined,
so how much visibility gcc has into how it works is hard to say. But a
further complication is that the arch may not have, say (simplifying
somewhat)

#define readl(x) swab32(*(volatile u32*)x)

but instead have readl implemented as inline asm which includes the
byteswap. PPC being a case in point, where the readl is in_le32 which is
done with a lwbrx instruction, and certainly gcc couldn't in any way
change a swab32(asm("lwbrx")) into asm("lwz"). But ppc defines its own
mmio_read32be, so that's not an issue.

>> (On PPC, there's a separate definition of mmio_read32be, namely
>> writel_be, which in turn does a out_be32, so on PPC that doesn't
>> actually end up doing two swabs).
>>
>> So ioread32be etc. have well-defined semantics: access a big-endian
>> register and return the result in native endianness.
> 
> It seems weird that there aren't any cross-arch lightweight
> endian-specific I/O accessors.

Agreed, but I'm really not prepared for trying to go down that rabbit
hole again.

Rasmus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
