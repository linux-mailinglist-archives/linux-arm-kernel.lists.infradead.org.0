Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97152D7FFD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 21:20:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2zO/eN2Dg3jFJc8gIcm1I1MWooNnns65u3XWr8UR4cI=; b=jfEOjRWN8NoeM7
	VAg7xzxuzE0Kv6t6/LKnnJ0P/AbnOx+D+bpeHe03GqJ/F+WprWRpi/L8DxQn9Ys+RaauxtPl52AF9
	XpDZ2+wOfeBwBzSRzYvaXQUQlm0296V9GCWApyBZMNxQPPtm7FHOx5nHHygow7exc7KvHPh531Amr
	OT485Kpu7fcNi0dZNiin7OteoHh7YcHf5XAhSgFnh1NLwuLbA4V+qrP5VJsehUb05Y7XNqiOGiBRu
	y6eixZwcMn1jTHzqexTPtD43zyNecZDBx8++8mGhf2QKCZPRznp0nwY0pOJJUfIZgPX0Th8MLKxSM
	56drAnNdm5BEYzgCOT9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKSNJ-0003Y4-P7; Tue, 15 Oct 2019 19:20:53 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKSN5-0003X1-IK; Tue, 15 Oct 2019 19:20:40 +0000
Received: by mail-ot1-f67.google.com with SMTP id m19so17992939otp.1;
 Tue, 15 Oct 2019 12:20:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=h5H37sJ61LUD/ljVtDlhAsfO5sV6TmGgopvlbfaEWZ8=;
 b=g+FuRQIzgK6cQT9Vz8Q/DYUSpk8FmsK71weG8OO3c2JvUcPoYa44RkFccKGujMVXoM
 9fqKEAH0lu7K3gSc87FZ9wpHthcccFPOw7oNZrcR/oASETA3J4UrZ9g8eovI9+KmjGCc
 6NTuGVGhkskJQbaexkSJXDIGO1KivTmFIG9yUyH5zfvJE8fIMF048WP9FxPnYVld2/b5
 0XfB6ghoi/tawwDSgNSoYy6Cg/hckVDoI/7BjkGnGfWs6f4YmV/EC60CCOuansa7rXWl
 tjY6juk/iuyRvXy10osSaCKShAzDxYlPA3hDOO1qeM+hAgc8ayFtH0CEmakFoRVGnSm2
 fSSg==
X-Gm-Message-State: APjAAAX6QvMphbszc9Ye06AHItXiNazFBqsyjZ7Jpm7XqaoaWbrQILmn
 UsTLXTei4s9BfHynNjqhkw==
X-Google-Smtp-Source: APXvYqwDWbiw9IcWLzy5NFqYMdjvTEqwdZgk4ryuCSiUp5VaQHf/4LJS4ik6SQYzDlQ79863axHHdA==
X-Received: by 2002:a9d:7d02:: with SMTP id v2mr3381533otn.301.1571167237726; 
 Tue, 15 Oct 2019 12:20:37 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t12sm6526227otl.35.2019.10.15.12.20.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 12:20:36 -0700 (PDT)
Date: Tue, 15 Oct 2019 14:20:36 -0500
From: Rob Herring <robh@kernel.org>
To: Argus Lin <argus.lin@mediatek.com>
Subject: Re: [PATCH 1/3] dt-bindings: pwrap: mediatek: add pwrap support for
 MT6779
Message-ID: <20191015192036.GA26160@bogus>
References: <1570088901-23211-1-git-send-email-argus.lin@mediatek.com>
 <1570088901-23211-2-git-send-email-argus.lin@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570088901-23211-2-git-send-email-argus.lin@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_122039_610208_875820D1 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 wsd_upstream@mediatek.com, argus.lin@mediatek.com,
 Chenglin Xu <chenglin.xu@mediatek.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Sean Wang <sean.wang@mediatek.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 henryc.chen@mediatek.com, flora.fu@mediatek.com,
 Christophe Jaillet <christophe.jaillet@wanadoo.fr>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Chen Zhong <chen.zhong@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 3 Oct 2019 15:48:19 +0800, Argus Lin wrote:
> Add binding document of pwrap for MT6779 SoCs.
> 
> Signed-off-by: Argus Lin <argus.lin@mediatek.com>
> ---
>  Documentation/devicetree/bindings/soc/mediatek/pwrap.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
