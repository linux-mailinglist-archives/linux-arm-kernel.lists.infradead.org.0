Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A574EAFF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 16:47:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pN55uK1mdDPCKN17AvUad4hDhQVvPVpIj1GEIm+9C50=; b=Ewbzy9VMccNH5O
	2EFDY4B7HVM82VRuNpPm7pYyNmy9hXGOUojR7sIFVNeq5nxIsi70/qxYhcSOM1yVuM+1xr7vfCeno
	Z5sizgRzHcKCnYynOyN00ioti+in5viwOmOcIVYYtkaB+MHuZiGNmPD+NiBj2pBBJpKdSjhx8Zc1a
	hW4BCIxnfTWQwG8j5SVlFQ2TcDzdh+cHRPdnFRgeQUjN13Cf8l2cBrU8sosdlM/9Oy8o45RNVEuB/
	CCbi7GuHTsyaX0bveBLZCXyA8bmpvDzBSc6+KtHr7v2z7Gj9huiN7gmlOCjBIaW2bUlt/wvM79AA5
	RKt7CNU6+X8Y/M+sdwlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heKor-0005U2-NX; Fri, 21 Jun 2019 14:47:13 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heKoZ-0005T3-OF
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 14:46:57 +0000
Received: by mail-pf1-x441.google.com with SMTP id x15so3740804pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 07:46:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=YeYJiWJp9MsHiUEX6h5i5KyJQ1uqyv+cgtbzLuwMxJA=;
 b=bIBlrj6SJvGm27coMv8gvcGVis7CVdPkpuGVWbd8tlzMmKHY/tO8nInPNLafJhE5zb
 NNTk/M8pLR1NaEP0jv5VRvPjJOwUjCWesHq6avVC8bl6N/M2GDS95mp/+BWk1xPGAmF/
 NyBzQLRjOZotg5Rev6aQzro/uz0QLbZesbEttO4M5rTeurreTDsNJrzSnTV+ByHXzZAQ
 kqZG+VhRgW6fPciH2z6iiRuW1psLqQsn+ExazE0MxgWcSlfd69CSvadPlAhD/+0aHQQP
 3Qn4zZ+TDRmAvwpnOZdV1lJFxv6UXa150iubOAQdlj0wLlJACW4/q6Ki3X5Ysj0K0quk
 Fykw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YeYJiWJp9MsHiUEX6h5i5KyJQ1uqyv+cgtbzLuwMxJA=;
 b=CABhDTlprFHsyi7xIoC12tvFKQShv+cgbNkKPDe7rcj/Ig8v0FKul/y2G5pEd/mUyV
 NpW8XP17WUfdeQEZaDUwszo5zvDajsXP53TQ1iA1SQwqYUEOI/Ciqn9s7q/io6YdyCdR
 yEjcL5zHUA5/2sB7KGUEq6MWPROkQupIo7BTLyjnDJPvq4Mee/uNLiSuEYgAWiSB6diB
 urE0Vd2zIx39Lhj+1CmHfRT3/GHdjzBbLbxjQEsl9/7RgQHHOtCUmARX3EOV9bLbYGfA
 29EQgseUZggDTH1ol/e/EgqqaPn2C82lTyWk3myrvoQmZDIeBA16aeqYceuTd/QPDy6h
 WqYg==
X-Gm-Message-State: APjAAAUlBg692NtvFGkrU2Th6ZoF2elwks9i07gXTRAO5cgI0RYRNLcf
 O7RDb/FAs7TDv0AMXpv8XNw=
X-Google-Smtp-Source: APXvYqxHIVzUGzZFjBCxC6IFlvlwe0JS6Fyaw3V10ffP0u+kmWXjt4WMcU7mQ2dUL9OvC9PRWh/cpQ==
X-Received: by 2002:a65:41c7:: with SMTP id b7mr18737069pgq.165.1561128412761; 
 Fri, 21 Jun 2019 07:46:52 -0700 (PDT)
Received: from [192.168.1.3] (ip68-101-123-102.oc.oc.cox.net. [68.101.123.102])
 by smtp.gmail.com with ESMTPSA id q144sm5187006pfc.103.2019.06.21.07.46.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 21 Jun 2019 07:46:52 -0700 (PDT)
Subject: Re: [PATCH v2 2/2] ARM: smp: Moved cpu_logical_map[] to smp.h
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <20190603231830.24129-1-f.fainelli@gmail.com>
 <20190603231830.24129-3-f.fainelli@gmail.com>
 <20190621075730.nubg7657nwlkmmmk@shell.armlinux.org.uk>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Message-ID: <4e6e7f40-ab4e-f41b-94a7-176cbbbb30f2@gmail.com>
Date: Fri, 21 Jun 2019 07:46:51 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190621075730.nubg7657nwlkmmmk@shell.armlinux.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_074655_794143_F5C5385E 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 open list <linux-kernel@vger.kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/21/2019 12:57 AM, Russell King - ARM Linux admin wrote:
> On Mon, Jun 03, 2019 at 04:18:30PM -0700, Florian Fainelli wrote:
>> asm/smp.h is included by linux/smp.h and some drivers, in particular
>> irqchip drivers can access cpu_logical_map[] in order to perform SMP
>> affinity tasks. Make arm64 consistent with other architectures here.
>>
>> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> 
> I merged this last night, and it causes ojn's builder to fail 98
> defconfigs with errors like:
> 
> arch/arm/include/asm/smp_plat.h:79:7: error: implicit declaration of function 'cpu_logical_map' [-Werror=implicit-function-declaration]
> arch/arm/kernel/setup.c:594:21: error: lvalue required as left operand of assignment
> arch/arm/kernel/setup.c:596:22: error: lvalue required as left operand of assignment
> 
> Dropping this patch.
> 
> Also, you may wish to make the patch description refer to the correct
> architecture.

Sorry about that, I will go back and revisit this patch.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
