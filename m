Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C479F16E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 19:22:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vvvm9DnXDY07muvHKpTsSFZaSKKVryX3eadATGvdGhw=; b=bjxv3syLso54z0
	0NubhaPvGzDhhoJw88IUL1vXprbVwd7MsI0dz64dj6ITqlyjp/0aU5hnicdBJ5XtEcFvk4TfSV0Vm
	etXydDWfFdONNSoKMOdT1xa043UNmLct35RFKgNKOLwZ3p8zTUW1jZmkHKl+MutyP7ebwzP0MEFbV
	O6UYyq1hGrRgwtFnigM+SRckfCirVlGgAxbvmRUHJ3sy1VEuscHfr15Xmj/M6YZpmfmMHYXOsYOK0
	+2rS+ziMfEWEiss3BqM8CnEYgxPod1RoWX+hGd2J54kiiv8ZJR5Nk0acps+HcbsB76/TGM4lfMdl0
	ZetIPe85GR79IIHtO+lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2fAQ-0003yj-E2; Tue, 27 Aug 2019 17:22:02 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2fAI-0003xx-Ev
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 17:21:55 +0000
Received: by mail-pg1-x541.google.com with SMTP id l21so13047351pgm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 10:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zRigP/msiQiDSPdu4zbzx+Q8x/ih7vzlwsY6a8Wz66s=;
 b=Iauj4YMDxlI7eSu/g9BPoFQBxpnhpWIfR4fBeRCtD1F+hz08fDxiccP5oYfoAH7en3
 bTcbEs/SFVl9UkpYreup9INiGKmMuerTPULnaBtTUygkNG0nbaoMSyflf3ERPTRpMLSP
 VVfD+4qV6SHX/L8+KcYbfan27OAC0eVHgWPrr/r0ugUUblmgOSBvN3t+cz0PmxOiN277
 /+gewSrztdybZcF91zFblvsW6WTD/D8pBvNHBm5DD8inJL4925TLHvKitxges+MpkKYc
 rwXDYio+g1DLNHBP7uCu8EKOZZXsGRXU1BcmPBdX4Q+FJZwICl99e6kCKvcIJY5YU3qd
 Rtbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=zRigP/msiQiDSPdu4zbzx+Q8x/ih7vzlwsY6a8Wz66s=;
 b=shqnvP1y88nn1l2M14AF42fQ9loU1+i0GqrLF7ahzZ/MR1q8aTiKgfz1i6x8i2IDZd
 AL2/MlhEM/Qf+uTjW2Cb9JZN1CYu8kP/GpzO5krNjSWSWZ46b5dmrGt3og1S327zK6k9
 MPvh0PeKldwErTk0/noE0+tLlq60eXC+BbfKLR1O5Z0Uh0Vlql9dGK+JHY4aMWSTQI9x
 dohziSsT4cb1C60VWoG9vO3AozfCCQQJsTgL9UN1pPd/sloRuDEBM5xe4ra65++Noya+
 HV/cCzwvL9uf896ZsNOpVJ+xqVm0OjI1ahUkSPDmr3IUrVNUPIPxQASc6/ObNcsDRBEo
 Yj5Q==
X-Gm-Message-State: APjAAAWl8tTN8BzRjJx+GnO27NWWh6kUv0Ui0Z1htt1DkCEmB2LC+bcL
 BZvDMDi6n7cL0Kve4hfWk4E=
X-Google-Smtp-Source: APXvYqyKRhppJ/qA2UBq6ZMaVWHjlMRhLmiVaZLdW9FTrJ4pwB3mo84sMTVDrIA1/lMdfAUIYt8F0A==
X-Received: by 2002:a62:4ed1:: with SMTP id
 c200mr27207401pfb.218.1566926513664; 
 Tue, 27 Aug 2019 10:21:53 -0700 (PDT)
Received: from localhost (108-223-40-66.lightspeed.sntcca.sbcglobal.net.
 [108.223.40.66])
 by smtp.gmail.com with ESMTPSA id 6sm15692223pfa.7.2019.08.27.10.21.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 27 Aug 2019 10:21:53 -0700 (PDT)
Date: Tue, 27 Aug 2019 10:21:52 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Ivan Mikhaylov <i.mikhaylov@yadro.com>
Subject: Re: [PATCH v3 3/4] watchdog/aspeed: add support for dual boot
Message-ID: <20190827172151.GA31588@roeck-us.net>
References: <20190827165426.17037-1-i.mikhaylov@yadro.com>
 <20190827165426.17037-4-i.mikhaylov@yadro.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190827165426.17037-4-i.mikhaylov@yadro.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_102154_524326_14ACC0CD 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, openbmc@lists.ozlabs.org,
 Alexander Amelkin <a.amelkin@yadro.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 07:54:25PM +0300, Ivan Mikhaylov wrote:
> Set WDT_CLEAR_TIMEOUT_AND_BOOT_CODE_SELECTION into WDT_CLEAR_TIMEOUT_STATUS
> to clear out boot code source and re-enable access to the primary SPI flash
> chip while booted via wdt2 from the alternate chip.
> 
> AST2400 datasheet says:
> "In the 2nd flash booting mode, all the address mapping to CS0# would be
> re-directed to CS1#. And CS0# is not accessable under this mode. To access
> CS0#, firmware should clear the 2nd boot mode register in the WDT2 status
> register WDT30.bit[1]."
> 
> Signed-off-by: Ivan Mikhaylov <i.mikhaylov@yadro.com>

Please run "checkpatch --strict" on this patch and fix the reported problems
(I _did_ ask for proper multi-line aligment before, but there are a couple
of other issues as well).

Thanks,
Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
