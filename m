Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74DD415CF26
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 01:38:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+8cVQoNFU7QTmH5muQ3wPuCUvu43ssCctAviOU0hfVc=; b=CCeSqDvKogZXJ/
	a/83J8fXg1reLVbLVHT93+okNFxOz/q5XwkLAqc7TOYRLMFEzlVE64DxV2v9RZUBhaXTF3aTFxA84
	pdfTs0FCPS/+McPa1EMa88n/NV+hWgi1W3qXoYJQT7pGutcTtQLobWkFwL+lWTAtAOvoo0m7hPJ59
	Pd0QfMe0AHrzIo75xE+9PpOvg22+zlMa2aanPni7Mcr2CP/XPAYmUGgmvCmMPMg2QmH2Aun/WoKJz
	U+EFKHG84xRBJO9+v6oSMFpo3lp9YCmoGbpZ07OOS1VM28M0JuPb3Adlgw6R0px0lzlevgpodpzix
	cUhCZ8zQPV927JwUWk2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2P0E-0008Vb-Vv; Fri, 14 Feb 2020 00:38:42 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2P07-0008V0-HC
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 00:38:37 +0000
Received: by mail-qk1-x741.google.com with SMTP id a2so7579234qko.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 16:38:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wGH4VY/3ugpp7nzWpAp09Rovcx+O4RdGGz99VfpVE0k=;
 b=V6RIg5lFKn8SGTXOEVEEQWPnDFJIa4x7oTbMlHJPCCvjD1SQumScY4+/x01VueDwjQ
 oX1sqPAK7GOJLWeGDhHeh+x4SzW2+6F002PxORIApjUQlam4ShwKYf7hn8v3+BCTkbnB
 Vv+5WZp2o3wgLsnoZomZ1m/28AlD/pQDDszTehbmWVOMF9Y1EZGBOoxVYpSeNVJfzder
 XAZCrlEA+5/tbwlq8Bmx2q0HIIXVmigmKsxZD/IVu2peOeOZqvUkqFZmgrjNC1k2ZMbl
 Rt633Tp+AzgUnQ66c0wShyM3HVZooGqY/YjaRTtm6j+fW/uRBT741KXKRSl3+vZkt4nw
 oMGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=wGH4VY/3ugpp7nzWpAp09Rovcx+O4RdGGz99VfpVE0k=;
 b=gFIX8omN31B1c6whzgG7PxChDg7EM1l83mcUZu21w7uASVf21Tso4uFnYUHozBGljq
 +koeAvsplkMADMDJgBhFiW/rU259ZBK/3ZrnYNDSvQK8kGARKLRQTnqbEbqsVkqlLrj2
 LoEYaIpiOWqEGlfTwfkgv7rEJKjoCXinUUwLwJ8Mxw2aGx2PpsJ3Dc/t2ydlD5M06giE
 nnpV+8EFbvhh9yOAgUpbdYWGRtxG7BjbLMWbPQx5Bvw8rY4S09Q07nOzQKoi/Kl1SctC
 Fw1PKAB79BcyL1NZpb5EHpDo0syykhUzQ1lJyM0HwI5QuknYbiO43RA2o2k1v+eoDRF9
 YpKw==
X-Gm-Message-State: APjAAAVkDpoUna5CGhanX/iG+xuLXiYe414Rc/e8AbC1Y+m2KeoO6KM5
 TNllRg18fGN8baTdlW549rE=
X-Google-Smtp-Source: APXvYqwfnW4Vs+QhrRGYRew3FAdJ0vrdZDXZKbEZ0z9MgIlJXH1IiWUuhUEyeD7TvJXJg9PvvaQgiQ==
X-Received: by 2002:a37:bd85:: with SMTP id n127mr240986qkf.113.1581640714660; 
 Thu, 13 Feb 2020 16:38:34 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
 by smtp.gmail.com with ESMTPSA id t23sm2278596qtp.82.2020.02.13.16.38.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 16:38:34 -0800 (PST)
From: Arvind Sankar <nivedita@alum.mit.edu>
X-Google-Original-From: Arvind Sankar <arvind@rani.riverdale.lan>
Date: Thu, 13 Feb 2020 19:38:32 -0500
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [RFC PATCH 0/3] efi/x86: add support for generic EFI mixed mode
 boot
Message-ID: <20200214003832.GA3073156@rani.riverdale.lan>
References: <20200213145928.7047-1-ardb@kernel.org>
 <20200213175317.GC1400002@rani.riverdale.lan>
 <CAKv+Gu-78w=gs+D-eS5iBX7e3zL57XBOe1vdW=Bkk=EcA+_FQA@mail.gmail.com>
 <20200213184752.GA1424509@rani.riverdale.lan>
 <CAKv+Gu9Azn9oGHaTqv+-Foj4=b5Y-JradERq4NC5V9XOaVjSKQ@mail.gmail.com>
 <20200214001048.GA3054227@rani.riverdale.lan>
 <20200214001257.GB3054227@rani.riverdale.lan>
 <CAKv+Gu92Tny_PJjddAtLrhdFJm0GqgSfj3NA26PX6xOiaStozg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu92Tny_PJjddAtLrhdFJm0GqgSfj3NA26PX6xOiaStozg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_163835_598307_DFFF22A2 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
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

On Fri, Feb 14, 2020 at 12:21:30AM +0000, Ard Biesheuvel wrote:
> 
> 
> I see the value of having a 64-bit image that can boot natively on
> 32-bit firmware, but I am not expecting any buy in from the distros
> for this scheme.
> 

Ok.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
