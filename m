Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 980943AEED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 08:17:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:In-Reply-To:
	References:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GOseda/y2VG8welFz0/WOhB9AK3O9HKUjfC3201Gl30=; b=nPvVRbClcJ1l7X
	rwEr4Tit/zoDDchRYMlM6y0oiYRzuTvNDfJ4za0ROFxiW3BFc/qh71TskAUCYgCoRhb8o2F+TlkzV
	CEgKv6GFRbb6TxKW8keqewtfHT6DLf4gathb05Wh1dHZyNUOwMUPkkgbWxoLV1Ckp7kgtj/xvllwP
	YYefGG1WHYWGoBBM9AYuS51HAUaFy9e9pBD/UZO/Y/41nqtrKIHyT7nW7asu/T2bhcxIyoQJNi1hr
	mMKo3o7gvLLvmSEj+JpcS2ypfmSnMmyylA+kaNUX0kS2C2w0pAaPvA36jGrgaHjjHTdwIpltm3nRu
	yE6qu/N9Qof3hDJjq1YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haDcW-0002K9-Mb; Mon, 10 Jun 2019 06:17:28 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haDcI-0002Jn-KH
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 06:17:16 +0000
Received: by mail-pg1-x543.google.com with SMTP id d30so4445697pgm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Jun 2019 23:17:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:references:in-reply-to:mime-version
 :user-agent:message-id:content-transfer-encoding;
 bh=QUcM2bfCpfs+CF5Q3MEY89CqL+kCuIGlPKR4lAGQQUE=;
 b=gBDc6s5wefUKJtnMQTjQlBkkBMula3LNzwu5ME6utMbGVzJqi2ERsUVzab2XgCGaqv
 DQJ7aci9f7H4UxABCmtK3IE2t8OCIG662iAbqbilxNeqS0dImhTkOdQHbMhey38dlu7s
 PqfAltLOAHAzHYFnBJttsikw1L9OCZE32ELJUTXo6NbGTBY4EJWHKsIZWbjH8QdjZ4ji
 mHYGdGjvjHo305WfGXJMbWPHUTRwh5L6q/9f5A5e71SrlX9R1JG594iKIVUHm0Sq/KGn
 FcrgeoxtVcPtQACR+Fk9WCSjtKK/cisrT2gfbd54KXApIEX6H/VO8hAhENIFVIXdYOWv
 T9hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:references:in-reply-to
 :mime-version:user-agent:message-id:content-transfer-encoding;
 bh=QUcM2bfCpfs+CF5Q3MEY89CqL+kCuIGlPKR4lAGQQUE=;
 b=TG4yH5gS61N+2ckJGZ901V+Q+PP5qn0dhfPhMCKlE0KUoSjg5RKJsz4V8IcMqVxzox
 zpE0UDuygjtFLpdFSH7Gld9AgBTpf+PDQH8u8dghT2YN4tQ9x8W/qCW8ajE9KTLSDU9h
 pHhCSMuZFeI/H0KZqBrWu58TT1avOGqkPLBNIipnEqrwrVVxNmx7e0gjBjcksVyvHas2
 sMJ+bmzGmgnOngc/T/kZhT+ywKtVq7TAfESw5FgJQWqe2Si+0aNpTx7qchA+Y54vmkdm
 zpfusr8z3zBzfY1pT8454uoJAPIM3WCwl4eK6p/BQSSER6AyfCfnhcl9KhE5sZcytysc
 N3jg==
X-Gm-Message-State: APjAAAUeasUJmeZdGw9T+1fcyjSRjpet9gwMgG4l3kxasSg80A+U1fiD
 9aeoUzQd1i74lO+jf6anIqG9ojE7
X-Google-Smtp-Source: APXvYqw34wde3ng/Qx9tQNG4a1tJVYDA4kMn2ZLcc1X5fYZq17VRglbkiBgljRp0MRwhwJZOeiXzvg==
X-Received: by 2002:a63:de43:: with SMTP id y3mr14823919pgi.271.1560147431601; 
 Sun, 09 Jun 2019 23:17:11 -0700 (PDT)
Received: from localhost (60-241-56-246.tpgi.com.au. [60.241.56.246])
 by smtp.gmail.com with ESMTPSA id q1sm15483011pfb.156.2019.06.09.23.17.09
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 09 Jun 2019 23:17:10 -0700 (PDT)
Date: Mon, 10 Jun 2019 16:14:48 +1000
From: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH 2/4] arm64: support huge vmap vmalloc
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
References: <20190610043838.27916-1-npiggin@gmail.com>
 <20190610043838.27916-2-npiggin@gmail.com>
 <c49a8fa7-c700-b45b-31b8-1d49afc42136@arm.com>
In-Reply-To: <c49a8fa7-c700-b45b-31b8-1d49afc42136@arm.com>
MIME-Version: 1.0
User-Agent: astroid/0.14.0 (https://github.com/astroidmail/astroid)
Message-Id: <1560147087.rpy7pimoej.astroid@bobo.none>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_231714_692771_04D2F021 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (npiggin[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Anshuman Khandual's on June 10, 2019 3:47 pm:
> 
> 
> On 06/10/2019 10:08 AM, Nicholas Piggin wrote:
>> Applying huge vmap to vmalloc requires vmalloc_to_page to walk huge
>> pages. Define pud_large and pmd_large to support this.
>> 
>> Signed-off-by: Nicholas Piggin <npiggin@gmail.com>
>> ---
>>  arch/arm64/include/asm/pgtable.h | 2 ++
>>  1 file changed, 2 insertions(+)
>> 
>> diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
>> index 2c41b04708fe..30fe7b344bf7 100644
>> --- a/arch/arm64/include/asm/pgtable.h
>> +++ b/arch/arm64/include/asm/pgtable.h
>> @@ -428,6 +428,7 @@ extern pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
>>  				 PMD_TYPE_TABLE)
>>  #define pmd_sect(pmd)		((pmd_val(pmd) & PMD_TYPE_MASK) == \
>>  				 PMD_TYPE_SECT)
>> +#define pmd_large(pmd)		pmd_sect(pmd)
>>  
>>  #if defined(CONFIG_ARM64_64K_PAGES) || CONFIG_PGTABLE_LEVELS < 3
>>  #define pud_sect(pud)		(0)
>> @@ -438,6 +439,7 @@ extern pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
>>  #define pud_table(pud)		((pud_val(pud) & PUD_TYPE_MASK) == \
>>  				 PUD_TYPE_TABLE)
>>  #endif
>> +#define pud_large(pud)		pud_sect(pud)
>>  
>>  extern pgd_t init_pg_dir[PTRS_PER_PGD];
>>  extern pgd_t init_pg_end[];
> 
> Another series (I guess not merged yet) is trying to add these wrappers
> on arm64 (https://patchwork.kernel.org/patch/10883887/).
> 

Okay good, I'll just cherry pick it for the series.

Thanks,
Nick


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
