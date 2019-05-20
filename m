Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B20522AEB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 06:41:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wOdoBoWJ6y87CYwwGRp1V9tzJUrrg6o5tFkUSKBdKPw=; b=F/nt4aI4pxyCQ0
	e5P8fMyPm9nIx9hKAiMIC2wCvApDZ9tZh4/QSHdbm9jBQ84FpaGgEjdoJVZbiQpYymPDTDjEXXjVL
	0C/jivFuIvANNr0prYFKpUXID0sywERKnBHWi06g1c8tZGAPSu4OmOWGHXY2FtfNZtB/L39Xg/y3Y
	w2G5FdbaQpwznWMISlvETNMk6n52nIn/gNhsoSEKU1edCeQsQxguCMGHtyxpKYfGOJrgbqjYPInSY
	/yvGXOXk9/IUn/C9qLCG4ytWrzvcGYavm9fR4ZgtIj0b1gHOQNTnIerIuROKvDf8cdMU18l+L3h8l
	cqQ7+YAjVvOqoLRX+xuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSa6v-00056L-Uk; Mon, 20 May 2019 04:41:18 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSa6p-00055Z-Nn
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 04:41:12 +0000
Received: by mail-pl1-x643.google.com with SMTP id p1so713674plo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 May 2019 21:41:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hQw5aECgY9hKK5rZ7g8MBM09I6jNL0ROWQsBCMlAOrQ=;
 b=CHlsGg1p7a9hc3+KkJoUw8ok0htU3vc27YzRVP8CMdqBhgkmGeNP91gS+yuP3utt5G
 oRlTos/xF2Rejcsd0BkEVMmQrs7XKf/dae6xidzWuR+xFI5AILwFC0Hlk5g0UvwEkbzW
 1iZdLSnjXW9taDvh8QeuNJmhAT1sawmbt2Pf0k75DF7p1fs8uZA4cI+YDo/ekFDDS72w
 onIWHPVbYxSv7jLjDoRrXA+L2q5UJH/WIyaj2D6PFQccc65Ma5Vf/ZVcs+1OxyWsjq1D
 MpNfsnRt/2BBgrbsH9ZIil3AoE5FMa0lZKhAo1p4GsQTR9eWVhx2LNBmJ50+FQR2Mjst
 SqaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hQw5aECgY9hKK5rZ7g8MBM09I6jNL0ROWQsBCMlAOrQ=;
 b=cwIzJOa3kDT1lnfbgyueDY9MkVtNVzaM0NA5TB8f8YDLhLKxKMZb4G0j3GQ2dJ0IPb
 qgsmPu8qszqzuSLlCb9ikK95fmquefHcG/ECJd5ZelpWU8VQUK5B7IC/SVXn/JUOtg1x
 JPuKnPA5EBAm2WmzOzQRQ51nXeMT0whxi7+Xwi4RLFdajGy3V3VNGGoW9j773ekIPJNQ
 g4CRu3EE5aq1dCCZEFu+NXcVS6wL07nIY9/JsVrM3ETt4PJrcJvH62JRyTnBfvKRnd1d
 12JHy60BmsIVM6IDuKSyrDAJSqKupMGh2ldkqwcXNOheQHo+kToeeSvGqHbD7AL5PFXQ
 GoYw==
X-Gm-Message-State: APjAAAXdKFRB8MXo2msoEHe3ZE5HX31paCJIlG/6TFEEE6edM1EFftFw
 0EFy+v++xU9Et4kf/zi2Zgw=
X-Google-Smtp-Source: APXvYqygdq7byHUUQ6kGF5vwKhQcPMMTp8G+OKse6Q0yeghSrgx1i3NizEAosJMWB5h7sP2z/RCo7g==
X-Received: by 2002:a17:902:6b03:: with SMTP id
 o3mr23433791plk.85.1558327270669; 
 Sun, 19 May 2019 21:41:10 -0700 (PDT)
Received: from localhost (c-73-222-71-142.hsd1.ca.comcast.net. [73.222.71.142])
 by smtp.gmail.com with ESMTPSA id m123sm21780054pfm.39.2019.05.19.21.41.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 19 May 2019 21:41:09 -0700 (PDT)
Date: Sun, 19 May 2019 21:41:07 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: "Y.b. Lu" <yangbo.lu@nxp.com>
Subject: Re: [EXT] Re: [PATCH 1/3] enetc: add hardware timestamping support
Message-ID: <20190520044107.ugro6zb7vkveyjw5@localhost>
References: <20190516100028.48256-1-yangbo.lu@nxp.com>
 <20190516100028.48256-2-yangbo.lu@nxp.com>
 <20190516143251.akbt3ns6ue2jrhl5@localhost>
 <VI1PR0401MB2237FB387B3F5ABC70EE4285F8060@VI1PR0401MB2237.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR0401MB2237FB387B3F5ABC70EE4285F8060@VI1PR0401MB2237.eurprd04.prod.outlook.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_214111_786404_AA87F295 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richardcochran[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, David Miller <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 03:20:23AM +0000, Y.b. Lu wrote:
> > > +config FSL_ENETC_HW_TIMESTAMPING
> > > +     bool "ENETC hardware timestamping support"
> > > +     depends on FSL_ENETC || FSL_ENETC_VF
> > > +     help
> > > +       Enable hardware timestamping support on the Ethernet packets
> > > +       using the SO_TIMESTAMPING API. Because the RX BD ring dynamic
> > > +       allocation hasn't been supported and it's too expensive to use
> > 
> > s/it's/it is/
> 
> [Y.b. Lu] Will modify it. BTW, may I know what's the purpose of dropping single quote character? For searching, script checking, or something else?

Simply because "it's" is informal speech, but the Kconfig help is
formal technical documentation.  (Or at least it should be!)

Thanks,
Richard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
