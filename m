Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46EBB18358D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 16:55:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bq9gQYgu9y768lgjPWgWr3FbjBL+e9YRKjyyYgxa9YI=; b=Zu9prkKtLxVt4p
	aM8urr8xBJdBS1pkDvE528yXH3QoYq25mxR0Tuvf9UWGYhpfTcmDTqLDwREuBuZHY0C6gzVW33si5
	QFRp20y4IUHuucSndIF6zN2yqq93hLy+gDuu76VzpR8acgnlsQsObEESLv4AZk6BcPXHWShStqKba
	7/nt3+V8Ag+CEkE+zitmR5+4z059jIetPeQNDQMmpLgImGbTwvoAMoH2vo1CSuvh57sgLf2l2RBwx
	shKo3sAWboq4EbFuEMsJfvYF0f6wyDxhiwoLjxdZ5u+MQA3+B1FOfT9hO/xnt2CIdGlkSDViGVnhH
	LmuNp2dnPWFfFu00AQfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCQAg-00055M-Sn; Thu, 12 Mar 2020 15:54:54 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCQAV-00054x-HN; Thu, 12 Mar 2020 15:54:44 +0000
Received: by mail-ot1-f67.google.com with SMTP id i12so1518052otp.4;
 Thu, 12 Mar 2020 08:54:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VQckKS4bw2Pbga6pTDzSkr9i3TfwNTVPnuQDLWOAQ2o=;
 b=h7K6fe0npViRxSnIQWeFsiA0RbEljbJJtsf1/rjCscpVki/XRGXJW8NYJAGDYZykEM
 gFa5x9Rqo56dPUX9KU59mBEK8OBdolIJgVAes3rD0ziqfCvf7tRtocXgKErJ3BxsLuFO
 NvRtEyoJ43oSTbIxFhn3Sx0SMJqVFqn2N8bfcpa6Q04MPC2xrXzSfD0QCp7MF50SoSd3
 +g1icr4BGIaUYl5OpSpReh+74lhKQrVPM7Kpnmpuscumt7V6F9Hd7m7tRenNglkh+vJT
 lgS3Eazj5yEWKrn1UbWZeBdq5i+yGoCmy2HF8it2LxSIdf4kOd342Gknbms9dTeOaeX9
 wuvQ==
X-Gm-Message-State: ANhLgQ1s5Z2nCKyw1PfzQushJ2VN7JBX+OQ5+lvE9Mj2DeAvRc2PeZrV
 wg72qk5phEw7ryYJRGN8Kw==
X-Google-Smtp-Source: ADFU+vsGpjXso/ZYnCWUaOJlyDF4Nk3XtOo/HVgAz+QgUT8q9zV+Axq0QTIkMiZ673RL/MJBnJmIiQ==
X-Received: by 2002:a05:6830:2361:: with SMTP id
 r1mr6580348oth.88.1584028482902; 
 Thu, 12 Mar 2020 08:54:42 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t15sm4318535otl.62.2020.03.12.08.54.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2020 08:54:41 -0700 (PDT)
Received: (nullmailer pid 31196 invoked by uid 1000);
 Thu, 12 Mar 2020 15:54:40 -0000
Date: Thu, 12 Mar 2020 10:54:40 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v1 1/5] dt-bindings: i2c: convert rockchip i2c bindings
 to yaml
Message-ID: <20200312155440.GA29613@bogus>
References: <20200305143611.10733-1-jbx6244@gmail.com>
 <20200312155044.GA25292@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200312155044.GA25292@bogus>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_085443_570587_BFAA8586 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 12, 2020 at 10:50:44AM -0500, Rob Herring wrote:
> On Thu,  5 Mar 2020 15:36:07 +0100, Johan Jonker wrote:
> > Current dts files with 'i2c' nodes are manually verified.
> > In order to automate this process i2c-rk3x.txt
> > has to be converted to yaml. In the new setup
> > i2c-rk3x.yaml will inherit properties from
> > i2c-controller.yaml.
> > 
> > Also change document name in MAINTAINERS.
> > 
> > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/i2c/i2c-rk3x.txt |  68 -----------
> >  .../devicetree/bindings/i2c/i2c-rk3x.yaml          | 129 +++++++++++++++++++++
> >  MAINTAINERS                                        |   2 +-
> >  3 files changed, 130 insertions(+), 69 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-rk3x.txt
> >  create mode 100644 Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
> > 
> 
> Reviewed-by: Rob Herring <robh@kernel.org>

As this series is all binding changes, I'll take it via the DT tree.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
