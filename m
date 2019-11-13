Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A94FA72A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 04:21:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TfTTs/Ja20hyasVIhEEPDQkH8JxiEJ1Za3wYjLDGZpI=; b=sI3DFSHHSqJBWa
	Q18l+5quvuyzLuCWCyMcUJHibVQM85sfsSU3AHlifTI3SzgAYnw4US1B9d9YUKgKP+2hSv2eogm/7
	vf/BsKROwitI6bo6jtI/w4+l6IGKfXo6ch4g9qlulpaZ2if5LE+f6wJYxH6UekL56t2XDpBQb0tfU
	vEXLxjrhJm1+TvuIde5YbUso0CLCBaEBo7W2BqolC/8d2AnkG84d7P95Bs1bJq0R3GyhGjJMcR5uK
	kOrLtniVlCD5zqHoVD1EpsITrp/VT5wop9h+owOruR6Y2ynD0dyfdtY7FMzRUf219/3gvi7foYpgU
	nwhg8XWIbhLiILgilHWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUjDn-0004yU-Ty; Wed, 13 Nov 2019 03:21:31 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUjDe-0004y1-7q; Wed, 13 Nov 2019 03:21:23 +0000
Received: by mail-ot1-f67.google.com with SMTP id d5so385917otp.4;
 Tue, 12 Nov 2019 19:21:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=QpBUJUS8nB4IDY7y0R8hl+FBwjsKsbh1meROaFZGKCA=;
 b=Cn4Lbe79ktWSyXsuKjbD0j+HHRVklr8GRm2Xm4kXRIjq7EZFCcXE5cnR/Nr/jmoZql
 knctSm0jyWN1QFroJwGJzI+nchDpdKf7lxegdINfTYAfFy6TwHIWNdyfTNB1pQYXs445
 8yAVar2j4L3WrlCHjTQjvQ6buHAgpsA5HVFVO/5qcWIMoM8WL/fruim9dFZDzup/g6l4
 6oX095QqyPDuGv1ePWHhglgqzihn1iD7rmR0TTgwVMy2wmruIUSNt2h00erKvAn5wUnv
 I+jTB63zU11IOeBd9fMPn3ifU+utDbpSURWc6NOH1wo6+GTl+MQ4Z6WeZqIlzi+udlu3
 K4ZA==
X-Gm-Message-State: APjAAAUJiNX5QVzfMS0ehxZ4vo0N9rpJG/Qki0pHCWKUfverSco/FmSv
 9BRaqfEqKZtmuV3YtzoLUA==
X-Google-Smtp-Source: APXvYqyIhAzYFJf8OJsXhu0w7bmN1x1bCUxobjWzSrdsBkKU/1LNHR6qZiA9P7CKjaVhd6fX8bGcXA==
X-Received: by 2002:a05:6830:4a1:: with SMTP id
 l1mr715933otd.291.1573615280360; 
 Tue, 12 Nov 2019 19:21:20 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id f83sm257863oia.43.2019.11.12.19.21.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 19:21:19 -0800 (PST)
Date: Tue, 12 Nov 2019 21:21:18 -0600
From: Rob Herring <robh@kernel.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [PATCH 2/7] dt-bindings: gpu: mali-midgard: Add Realtek RTD1295
Message-ID: <20191113032118.GA22026@bogus>
References: <20191104013932.22505-1-afaerber@suse.de>
 <20191104013932.22505-3-afaerber@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104013932.22505-3-afaerber@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_192122_279265_695A9C35 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-realtek-soc@lists.infradead.org, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  4 Nov 2019 02:39:27 +0100, =3D?UTF-8?q?Andreas=3D20F=3DC3=3DA4rber=
?=3D wrote:
> Define a compatible string for Realtek RTD1295 SoC family.
> =

> Signed-off-by: Andreas F=E4rber <afaerber@suse.de>
> ---
>  Documentation/devicetree/bindings/gpu/arm,mali-midgard.yaml | 1 +
>  1 file changed, 1 insertion(+)
> =


Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
