Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 193AA17CD61
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 10:56:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dh5uPFVqHToqqbqXMR4d1dsBX7PH6TRcPSp48yNajXU=; b=AbsxhNLlEyunHN8A+XVHo1jf8
	vaLKfNXUC9oSSSchHeISyV+/HPsnmnBE2Dj+qCTPvL4k8Tua7j8WQ6hWHQ77qHbh+1Ekc6M5u1sdu
	QmgGDNIyXC20ur+2Ugq7cpzlVV3EMbg9EkKgg+4KKPvSD3Dq5Zh25O16OVim6axgoVPuFI7LOoVYm
	vroaEgD6uY+6yg5xFO4F8ovm+GR/L9/2PNDY5mQ41g2Dn8VvWKXx3x8GONDOYZtLwDFONn36BbbG2
	wzDQJg2H3CjlLPW5fGGvUuu9tIGFHzD3iiP3baYtpPdB/GwtyPkYpkr+3KBFyih/1br3pANNAW61+
	scxJPo1rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAWBb-0002uW-21; Sat, 07 Mar 2020 09:55:59 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAWBR-0002tr-Cr
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 09:55:50 +0000
Received: by mail-lf1-x143.google.com with SMTP id c20so3889854lfb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Mar 2020 01:55:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Ji/5/bt2XJ8xArwptxUIPsa40Bf1NEJkrKPYGi/BazA=;
 b=mOkGDt3zDt5ABNqQCXya1Tqs/c3KohphydAK7oT3wEo+qr98DsVY9zHJtubQ8OwgmD
 hDqKnoUNbZEG7xSHXEThQ47oxj/a/Ea3n1CL3s8Kl19qc+TVh6R8v8NFZPOMZASBE3qv
 bMxzbyIX77TxA3m4OCCKDZkowylP9h4f/9Qg/GablCJ/swiPsqDUckM2pl+nfI3+Oj3w
 AU0Z7jvUirz0Skocp/BLk7z3eX3sfE0/xzwSvQIYADlRF7utGjArjjrrYPu8QUUGoAli
 jCHQbiGivQT7xDj6//C3OAgaTkiKnnt63rShJ0sERTUhf27cM74n9i6wTzMCjOzfoXHl
 2GLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Ji/5/bt2XJ8xArwptxUIPsa40Bf1NEJkrKPYGi/BazA=;
 b=ZRcYo2OQXdDZ9J6tZXhrOorXmSJ9wDMmDnLkyV5h5KA2W5yVYLs0O//DFi77hdc1Cr
 oXHxjolB1mraJoIOss20BG0Zxa2iaLo+AtbLUgiOUVR6lP1xjzlUqWXiG27UoLILx/fF
 faZ+I0jDfOCpysUVuE7MGBXWE+sTJV2qCkM0hMePrbqj1OCz/Qc2ZSh9BUS9eANHq2cd
 aqNXY12b2Peo5/QwxWGj4eavTsq+f/hGw7FFZhW2IZDV57szKy0FQ/az1qptZTmvOZF+
 ncDN7u2Zma/ryc7AQSO0y7ZSk/Q3UFTBATF3Ma2HL4WYxtUjLQinJwDPavOJ3Mbzsj7X
 82dg==
X-Gm-Message-State: ANhLgQ2xK1Jwa1vyYVplXnUrq29AbTi6xB8MzdjsypeAZ42mlbobKS8w
 OaMAFppSCR43CuUiBq6wdg+hdw==
X-Google-Smtp-Source: ADFU+vs5VZMdNVhnnQ/MNq4B4lQUnHvHzclPq0rH3MnhPTJv3B+KFGP8bulUYE8fr5KHb7cInABAEg==
X-Received: by 2002:a05:6512:246:: with SMTP id
 b6mr4326390lfo.175.1583574947544; 
 Sat, 07 Mar 2020 01:55:47 -0800 (PST)
Received: from ?IPv6:2a00:1fa0:402:864b:dd24:504:68eb:a9fe?
 ([2a00:1fa0:402:864b:dd24:504:68eb:a9fe])
 by smtp.gmail.com with ESMTPSA id z18sm14212386ljm.15.2020.03.07.01.55.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 07 Mar 2020 01:55:45 -0800 (PST)
Subject: Re: [PATCH v4 3/4] PCI: brcmstb: Wait for Raspberry Pi's firmware
 when present
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-kernel@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
References: <20200306114348.5172-1-nsaenzjulienne@suse.de>
 <20200306114348.5172-4-nsaenzjulienne@suse.de>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <16c98273-a639-374d-e784-0d015aeee634@cogentembedded.com>
Date: Sat, 7 Mar 2020 12:55:43 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200306114348.5172-4-nsaenzjulienne@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_015549_434785_FB72EFCE 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: tim.gover@raspberrypi.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org, wahrenst@gmx.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06.03.2020 14:43, Nicolas Saenz Julienne wrote:

> xHCI's PCI fixup, run at the end of pcie-brcmstb's probe, depends on
> RPi4's VideoCore firmware interface to be up and running. It's possible
> for both initializations to race, so make sure it's available prior
> starting.

     Prior to starting?

> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
[...]

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
