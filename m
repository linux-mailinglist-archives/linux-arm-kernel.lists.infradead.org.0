Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 361EC15CAAA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 19:48:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y/WLXMDvWh10OEte0Dm5SiqS5+U6y+D/z9crkaMuf7o=; b=YU108Jwd58LmIO
	4y7EID+/pNRx7az9IQZFd4MAF4ySNEAeBPFPgXyd1paRI72XHGD4sRXOd7qSBxDLdDqnhpEialjeO
	TIrO+vWkOP0n9nr8OqYk3164PhfpXGeVjVteydqVwut1JHJ1kwcBpJo87ONF75tDKwNu3RRDKhN3U
	zNvHPlwoXYiGowZfljQuvbj9o1uodvg7Z1mbkrfWxx1/pJZZxFJiIUzR4G6r8TGZejJo5Ww7qOsuP
	qZIgDMJkmk+fKKy1w4JVrzALu8z1me1lhrmgsBaG3CYK4iBQusSZomuVwhTeWxD/5TV2oHaxFtFHk
	B22UAm7K73qaThQDW56A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2JWu-0000GR-5B; Thu, 13 Feb 2020 18:48:04 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2JWl-0000G8-RO
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 18:47:57 +0000
Received: by mail-qk1-x741.google.com with SMTP id w25so6722984qki.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 10:47:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ItcHxmvwXWY22Frq93yy83FEgztrFUHu+KYy0gKPrtU=;
 b=N4uAGNRQul1USMZvgbzEha2JgQY4DeRIP4RNfbL9Ph/eCKQqlnGRBa5xV8YoKO1nVu
 jX1m1AeoVYk9R5ZhdTU1LXeqWRNVk7U0/4IsQHtLFZSqpdUonvqhvwYKZNOvDF3NMhiY
 5LqS1M/8Q9AUaDBn6mCAPXYVa7BGaSXxp0w3kYBfikUYbFB3lPbKrp+/9MHbM6m9o9Cb
 CSssK5NTP27/0qRVWRfqpK2eVxW+JT0a7HoOiIx2+y7GazUmazw30C/ETo/dHkEfhFAB
 pvrKcGguYqZGJhb05V+GCF1GFhidyX2+AWjyhMUObq2pyLisLVXIo1Glui+5DjkxJCRl
 UVnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=ItcHxmvwXWY22Frq93yy83FEgztrFUHu+KYy0gKPrtU=;
 b=c0W5tEkINDpuhuF/9cJOJZcw2Hv89DS+6K4UEdKOYBHpqQDQJV4SacyefaUNR0vC5h
 SrPblBJLLaNiFZwNwDX1h28MFv5LK1aRcM1g1U+PwlUY2qksRoQ9Ifvo7KVD19DSeP0w
 uWfwCeDvF0dggsexql7FYwuudpRF3xsHjW3KHDjRhAQtOk/Adgv3Pw85qX/F/yva6TQ+
 kT2C3qNxK4A1RjU9HUX2bh+VTZmPjeLWQLDgPkst2ndETnAHcqWr7K/h5wtEC6R2+FoE
 HeSaWWOvJkaN+eJPzD1n3VbsisvVaWf5iY5QaW/YcGQfGyGxoEnusYdd7s36T2nrQhLL
 Ix9g==
X-Gm-Message-State: APjAAAUuaDJ1SABxIiemdLakO9H5B6rQKHP38m9tKUVo8ytfqRnVUiZR
 66DcJ9L+xzMQMBjo8aXVKrE=
X-Google-Smtp-Source: APXvYqz3d1t4QHve0cTl9mgE5VkQtHXLK+r3RlU7AQCkpBiT3mb5Mbx8B0EKdCfdg719bNTZQK4w0w==
X-Received: by 2002:a05:620a:1134:: with SMTP id
 p20mr17213053qkk.33.1581619674400; 
 Thu, 13 Feb 2020 10:47:54 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
 by smtp.gmail.com with ESMTPSA id w134sm1740928qka.127.2020.02.13.10.47.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 10:47:54 -0800 (PST)
From: Arvind Sankar <nivedita@alum.mit.edu>
X-Google-Original-From: Arvind Sankar <arvind@rani.riverdale.lan>
Date: Thu, 13 Feb 2020 13:47:52 -0500
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [RFC PATCH 0/3] efi/x86: add support for generic EFI mixed mode
 boot
Message-ID: <20200213184752.GA1424509@rani.riverdale.lan>
References: <20200213145928.7047-1-ardb@kernel.org>
 <20200213175317.GC1400002@rani.riverdale.lan>
 <CAKv+Gu-78w=gs+D-eS5iBX7e3zL57XBOe1vdW=Bkk=EcA+_FQA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu-78w=gs+D-eS5iBX7e3zL57XBOe1vdW=Bkk=EcA+_FQA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_104755_889126_76DCFF3B 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [niveditas98[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [niveditas98[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Alexander Graf <agraf@csgraf.de>,
 Daniel Kiper <daniel.kiper@oracle.com>, Matthew Garrett <mjg59@google.com>,
 Michael Brown <mbrown@fensystems.co.uk>, Hans de Goede <hdegoede@redhat.com>,
 Arvind Sankar <nivedita@alum.mit.edu>, Peter Jones <pjones@redhat.com>,
 Leif Lindholm <leif@nuviainc.com>, Laszlo Ersek <lersek@redhat.com>,
 Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 05:55:44PM +0000, Ard Biesheuvel wrote:
> On Thu, 13 Feb 2020 at 18:53, Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > As an alternative to the new section, how about having a CONFIG option
> > to emit the 64-bit kernel with a 32-bit PE header instead, which would
> > point to efi32_pe_entry? In that case it could be directly loaded by
> > existing firmware already. You could even have a tool that can mangle an
> > existing bzImage's header from 64-bit to 32-bit, say using the newly
> > added kernel_info structure to record the existence and location of
> > efi32_pe_entry.
> >
> 
> That wouldn't work with, say, signed distro kernels.

No, the idea would be that the distro would distribute two signed
images, one 32-bit and one 64-bit, which are identical except for the
header. At install time, the installer chooses based on the system's
firmware bit-ness.

> 
> > Also, the PE header can live anywhere inside the image, right? Is there
> > any reason to struggle to shoehorn it into the "boot sector"?
> 
> It cannot. It must live outside a region described by the section headers.

It could still be inserted after .setup, or at the very end of the file, no?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
