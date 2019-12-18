Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B49281257BE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 00:28:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z4r/9e6Ak4WWA+NDPJ+8DplNxfM7tDTlZneS/37rPfs=; b=PbsNsrh6T48cAa
	2GUPmRe93N/o/c6uBjAc3NBBS9evkcPym/WClEwitK2qsE12N5q24q6Tjt1m3uUnt2/rjsHy3n4hi
	ctkXSSgPxkRFHSfJHmtV1JD3ua4qpvL/s9VHezDVRbW9ItkaPdwAkvESoKiL7e1xyUBRbaRc1GMec
	oQpbksbaBlqUnjk2kpfvCQi8HHqozelQK9czgaiXkL5DbtZ+lx6xZnfQ0KZziO3nrS0eFrpq2WX2E
	RFiWybN17U+KcAT+2cGhagir/Diij756T2k6K/sdEoXkmafszD4e6EHAsI/EHk4g3RoS2iVdL79gi
	SVQeFEBVehwjU9hmfMgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihijm-0003qH-Kh; Wed, 18 Dec 2019 23:28:14 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihijc-0003pg-8G; Wed, 18 Dec 2019 23:28:05 +0000
Received: by mail-ot1-f65.google.com with SMTP id 77so4568661oty.6;
 Wed, 18 Dec 2019 15:28:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/ZyKu0j0L9P7EvNBTxpXXf5dLPtT7NxrO5TJj8pvG5Y=;
 b=SfOcREMWVgN/VmncyrMl3f4RmSEzbxhuIaS5b3P1kvMBxYi4lc9mPBNxORCcFJupwT
 NkgJvU0kdyf3aCO8smSvIJXu9QBracFA8XgWHjwQFAgq44xOqSoNl67vTaffXRbDwZx/
 b0RQogdF9dJz1rf4y2/e9fdB1jGWY0yUPbglQvPo6+0npfIq3QRD/4JdksCWNXg/3vTO
 9N3WPgPM2Mcz5/yQWkSuhuDlkVVCqKDwK9gF34ltMFJ61rJ2KsxF2tFB1U1Ek3r07ixH
 gfQO09I/97RO0XJkCyi9gJDXC9ymzKa8FAMEeHNAhhLSYzGcPsY++a6AmZGChGODk6T4
 14cw==
X-Gm-Message-State: APjAAAVZFKkbLtFTPAwp/DYTEL5fVk4SQETlbzyjDnhHHbctL9qmV+XB
 QlG/H8CaExckkaAKdj5KqA==
X-Google-Smtp-Source: APXvYqwFPAhcuE93trHjiCLFU7ouah/UBbc6dMZe8ceDZG28OQ30K7jW48tVS8UqkME+NAqnpXd6Vw==
X-Received: by 2002:a05:6830:1248:: with SMTP id
 s8mr5388885otp.202.1576711682987; 
 Wed, 18 Dec 2019 15:28:02 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w203sm1369927oia.12.2019.12.18.15.28.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 15:28:02 -0800 (PST)
Date: Wed, 18 Dec 2019 17:28:01 -0600
From: Rob Herring <robh@kernel.org>
To: James Tai <james.tai@realtek.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: realtek: Document RTD1319 and
 Realtek PymParticle EVB
Message-ID: <20191218232801.GA28835@bogus>
References: <20191205082555.22633-1-james.tai@realtek.com>
 <20191205082555.22633-2-james.tai@realtek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191205082555.22633-2-james.tai@realtek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_152804_293232_47915E63 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-realtek-soc@lists.infradead.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 5 Dec 2019 16:25:54 +0800, James Tai wrote:
> Define compatible strings for Realtek RTD1319 SoC and Realtek PymParticle
> EVB.
> 
> Signed-off-by: James Tai <james.tai@realtek.com>
> ---
>  Documentation/devicetree/bindings/arm/realtek.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
