Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE6FC33D7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 14:06:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AFsRDuRennGD+EqRWb4c7XCTNXV/BWPgO3Y9R4WycHc=; b=sX3wBgPthvBJSB
	s6b7jLTWG8E0vcr91etD2IbO2yerNPJM/725UW9AUWLciEZBhOa54pRrqP4fQjVqBNKusXlJpruPY
	Xkpv28rhWRkuU5ZmbC0J2nuDQDJqbhw0JL0d8LDTz82oArRWoXA62Dh3uTJG3Ar5PlXjOLneXJDAa
	xmaff0gypy0v3JYBMEzuxPZbVD9GuXtBnreS1ySUYXQ1+uDB5A20eC37QhSFsY/MiwS3p6tStXey/
	ppRDLsFqcCg7YhU4glKnhVIyQN74DH6cFGEfzvAx+R0S0OJU+w0oCJ1ATe5i0a2mFx7L3eOQlNtMZ
	Zs6K+ppIEFiQl0a5nk+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFGvP-000355-Eg; Tue, 01 Oct 2019 12:06:39 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFGtK-0007My-0M
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 12:04:31 +0000
Received: by mail-oi1-f194.google.com with SMTP id m16so14150146oic.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 05:04:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rc80uNQCO5V74UZEUf3E2pBqivh12e4gIj5eJ05GnNc=;
 b=AJcKPMdMcEL/uCWtb/WJ5lvuW1J5czisthpUCIbAdkXIQVX530h6FJ6IdkkEjW/vJf
 0pOYuBqIT8Mq8o11bNxBgrMTPY5ZFT9Wtp2RnI2oeJPJpY3i4TKsfvsveiZMhRXJt3hd
 OPNTsmx3x8Lab2MFFdUmyAoTMScBlqcx+fcDCH3TfJpoKaHvVy+SaPGreh7C7etodbkW
 lRKDkTzt4lCY2NzVKtv6aMj9EeWGXhYXUzbkG4u+ySwKv0hH4EUtOXWyONZ6CQKNdlcA
 VXTdspj/mh5JQ8KuCW1sTZpip3xaP5j6zE4/I6Kcezk/I+znIAcd5PZPZ+BSlDKIP5Pd
 qk6g==
X-Gm-Message-State: APjAAAV4Bw3AlpeAD5JtxxU3zz4+RGaU7i/IealUIPWCCzNNd4s/Y3T5
 SrHX6Mx+8OlpL4itynKqhw==
X-Google-Smtp-Source: APXvYqwuwM7AkJVAtGa8akLZjV3Pru0RHcBtiuxx3c9KMgqDOsfLJ5O5/oMwqjvFDQHezJJYEcZysg==
X-Received: by 2002:a05:6808:8ee:: with SMTP id
 d14mr3311288oic.31.1569931468906; 
 Tue, 01 Oct 2019 05:04:28 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 11sm4823374otg.62.2019.10.01.05.04.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 05:04:28 -0700 (PDT)
Date: Tue, 1 Oct 2019 07:04:27 -0500
From: Rob Herring <robh@kernel.org>
To: Pragnesh Patel <pragnesh.patel@sifive.com>
Subject: Re: [PATCH] media: dt-bindings: Fix building error for
 dt_binding_check
Message-ID: <20191001120427.GA3594@bogus>
References: <1568808060-17516-1-git-send-email-pragnesh.patel@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568808060-17516-1-git-send-email-pragnesh.patel@sifive.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_050430_052149_09C7FF22 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 linux-kernel@vger.kernel.org, mripard@kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Pragnesh Patel <pragnesh.patel@sifive.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 18 Sep 2019 17:31:00 +0530, Pragnesh Patel wrote:
> $id doesn't match the actual filename, so update the $id
> 
> Signed-off-by: Pragnesh Patel <pragnesh.patel@sifive.com>
> ---
>  Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
