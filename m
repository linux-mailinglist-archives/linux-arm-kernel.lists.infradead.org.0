Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F355186685
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 09:31:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m0YXNnvnmXozhY3PTouofgQ7DoxtzE5NF7UrzIiVZQY=; b=oJuaSsk07iLlX8/kIJPUY6inZ
	t9htcMa+UBevgEnxoCrz6zaqYZgkPp/ABn+TETmV3uDBFPT04IQ/6rWtXxl4fgCAVknEjYDOr79zW
	fLkNibpd2CvGFZYVKyTJUt6pq0tbtNXhwFO8Yj5Z+C9ODeZ/K3QTz84p0dVC7enWM8VCg4ni9SXsx
	9VJRzEv1KKGcgskNdom7J7vGdMEj6IG0FtSJdjo8wD5ZBEwE6LOueGEc+P5MkKTNjoo6EFVMNgxrf
	6/lOq5ipx+HXCX4bIuPVP3A8GcLtUnoUE1XDKhlylR59OOY7twEEEih1MoNUPWWX37njekKs2gbbv
	nRljIIZSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDl9D-00085r-Th; Mon, 16 Mar 2020 08:30:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDl93-00083o-3z
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 08:30:46 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A472820658;
 Mon, 16 Mar 2020 08:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584347444;
 bh=ShtIzAXjdARpIp5bk6R+u6x5+mPatLQqVE+H2TFyyiI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=iljvpBfjN2QMpa+akkgow4BQCj7qUXZxzO9BNLKJqukhpSaF5nQwMPp3dEN9PjoW1
 3gBXFXuJUC19uMMOg7vzlyRrTuBNqoC9X/18UiBS5+4VMORwfPLMuJEm2R95vdqD7y
 wfoZd+uoGkyYhgnoSQySBYoJXMMLSO29tEYXU0Pk=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jDl91-00D1aD-0w; Mon, 16 Mar 2020 08:30:43 +0000
MIME-Version: 1.0
Date: Mon, 16 Mar 2020 08:30:42 +0000
From: Marc Zyngier <maz@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v6 04/10] arm64: hyperv: Add memory alloc/free functions
 for Hyper-V size pages
In-Reply-To: <CAK8P3a2Hnm74aUMNFHbjMr4HwHGZn1+xa4ERsxAJY6hMzhEOhQ@mail.gmail.com>
References: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
 <1584200119-18594-5-git-send-email-mikelley@microsoft.com>
 <CAK8P3a2Hnm74aUMNFHbjMr4HwHGZn1+xa4ERsxAJY6hMzhEOhQ@mail.gmail.com>
Message-ID: <632eb459dbe53a9b69df2a4f030a755b@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: arnd@arndb.de, mikelley@microsoft.com, will@kernel.org,
 ardb@kernel.org, catalin.marinas@arm.com, mark.rutland@arm.com,
 linux-arm-kernel@lists.infradead.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, linux-hyperv@vger.kernel.org,
 linux-efi@vger.kernel.org, linux-arch@vger.kernel.org, olaf@aepfle.de,
 apw@canonical.com, vkuznets@redhat.com, jasowang@redhat.com,
 marcelo.cerri@canonical.com, kys@microsoft.com, sunilmut@microsoft.com,
 boqun.feng@gmail.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_013045_202588_4993D977 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 linux-arch <linux-arch@vger.kernel.org>, linux-hyperv@vger.kernel.org,
 linux-efi <linux-efi@vger.kernel.org>, Boqun Feng <boqun.feng@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jason Wang <jasowang@redhat.com>,
 sunilmut@microsoft.com, linux-kernel@vger.kernel.org,
 Michael Kelley <mikelley@microsoft.com>, marcelo.cerri@canonical.com,
 olaf@aepfle.de, gregkh <gregkh@linuxfoundation.org>,
 Andy Whitcroft <apw@canonical.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-16 08:22, Arnd Bergmann wrote:
> On Sat, Mar 14, 2020 at 4:36 PM Michael Kelley <mikelley@microsoft.com> 
> wrote:
>>  /*
>> + * Functions for allocating and freeing memory with size and
>> + * alignment HV_HYP_PAGE_SIZE. These functions are needed because
>> + * the guest page size may not be the same as the Hyper-V page
>> + * size. We depend upon kmalloc() aligning power-of-two size
>> + * allocations to the allocation size boundary, so that the
>> + * allocated memory appears to Hyper-V as a page of the size
>> + * it expects.
>> + *
>> + * These functions are used by arm64 specific code as well as
>> + * arch independent Hyper-V drivers.
>> + */
>> +
>> +void *hv_alloc_hyperv_page(void)
>> +{
>> +       BUILD_BUG_ON(PAGE_SIZE <  HV_HYP_PAGE_SIZE);
>> +       return kmalloc(HV_HYP_PAGE_SIZE, GFP_KERNEL);
>> +}
>> +EXPORT_SYMBOL_GPL(hv_alloc_hyperv_page);
> 
> I don't think there is any guarantee that kmalloc() returns 
> page-aligned
> allocations in general.

I believe that guarantee came with 59bb47985c1db ("mm, sl[aou]b: 
guarantee
natural alignment for kmalloc(power-of-two)").

> How about using get_free_pages() to implement this?

This would certainly work, at the expense of a lot of wasted memory when
PAGE_SIZE isn't 4k.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
